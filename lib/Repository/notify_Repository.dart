import 'dart:convert';

import 'package:mechinenoti/Model/notification_Model.dart';
import 'package:http/http.dart' as http;

class NotifyRepository {
  Future<List<NotificationModel>> fetchNotify() async {
  final response = await http.get(Uri.parse('https://raw.githubusercontent.com/sayanp23/test-api/main/test-notifications.json'));
  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final data = jsonData['data']; 
    if (data != null && data is List) {
      return data.map((item) => NotificationModel.fromJson(item)).toList();
    } else {
      return []; 
    }
  } else {
    throw Exception('Failed to load notifications');
  }
}

}

