import 'package:flutter/material.dart';
import 'package:mechinenoti/View/Notification_Screen/notification_List.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_circle_left_rounded,color: Color(0xFF2FDF84),),
        title: Text("Notification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
      ),
      body: NotificationList(),
    );
  }
}