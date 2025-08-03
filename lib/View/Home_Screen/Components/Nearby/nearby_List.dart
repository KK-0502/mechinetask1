import 'package:flutter/material.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Nearby/nearby_Details.dart';

class NearbyList extends StatelessWidget {
  const NearbyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160 * 2, // e.g., 2 items height worth of space
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/image/food.png"),
                SizedBox(width: 16),
                NearbyDetails(),
              ],
            ),
          );
        },
      ),
    );
  }
}
