import 'package:flutter/material.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Notification_Icon/notification_Icon.dart';

class SearchboxNotification extends StatelessWidget {
  const SearchboxNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hint: Text(
                  "Search for products/stores",
                  style: TextStyle(color: Color(0xFF969696), fontSize: 14),
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF29D177),
                  size: 30,
                ),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/notificationScreen');
          },
          child: NotificationIcon()),
        SizedBox(width: 15),
        Icon(Icons.local_offer_outlined, color: Color(0xFFFFA115), size: 30),
      ],
    );
  }
}
