import 'package:flutter/material.dart';
import 'package:mechinenoti/Common/heading.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Nearby/nearby_List.dart';

class NearbyItems extends StatelessWidget {
  const NearbyItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Heading(headings: "Nearby"),
            Text(
              "See all",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF29D177),
              ),
            ),
          ],
        ),
        NearbyList(),
      ],
    );
  }
}
