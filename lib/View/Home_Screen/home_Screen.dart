import 'package:flutter/material.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Craze/craze_items.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Nearby/nearby_Items.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Refer/Refer_Body.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Trending/trending.dart';
import 'package:mechinenoti/View/Home_Screen/Components/View_Button/view_Button.dart';
import 'package:mechinenoti/View/Home_Screen/Components/location_Details.dart';
import 'package:mechinenoti/View/Home_Screen/Components/searchbox_Notification.dart';
import 'package:mechinenoti/View/Home_Screen/Components/today_Like.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Top_Pickups/top_Pickups.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LocationDetails(),
              SizedBox(height: 20,),
              SearchboxNotification(),
              SizedBox(height: 10,),
              TodayLike(),
              SizedBox(height: 10,),
              TopPickups(),
              SizedBox(height: 10,),
              Trending(),
              SizedBox(height: 10,),
              CrazeItems(),
              SizedBox(height: 10,),
              ReferBody(),
              SizedBox(height: 10,),
              NearbyItems(),
              SizedBox(height: 10,),
              Center(child: ViewButton()),
            ],
          ),
        ),
      )),
    );
  }
}