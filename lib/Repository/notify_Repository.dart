import 'dart:convert';
import 'dart:isolate';
import 'package:mechinenoti/Model/notification_Model.dart';
import 'package:http/http.dart' as http;

class NotifyRepository {
  Future<List<NotificationModel>> fetchNotify() async {
    final response = await http.get(
      Uri.parse(
        'https://raw.githubusercontent.com/sayanp23/test-api/main/test-notifications.json',
      ),
    );
    if (response.statusCode == 200) {
      // this area parse in background isolates
      final parseData = await _parseJsonInIsolate(response.body);
      if (parseData != null && parseData is List) {
        return parseData
            .map((item) => NotificationModel.fromJson(item))
            .toList();
      } else {
        return [];
      }
    } else {
      throw Exception('Failed to load notifications');
    }
  }

  // This code Spawns a background isolates parse JSON
  Future<dynamic> _parseJsonInIsolate(String jsonString) async {
    final recivePort = ReceivePort();
    await Isolate.spawn(_isolateEntry, [recivePort.sendPort, jsonString]);
    return await recivePort.first;
  }
  // This code for run inside the isolate
  static void _isolateEntry(List<dynamic> args) {
    SendPort sendPort = args[0];
    String jsonString = args[1];
    final jsonData = jsonDecode(jsonString);
    sendPort.send(jsonData['data']);
  }
}
