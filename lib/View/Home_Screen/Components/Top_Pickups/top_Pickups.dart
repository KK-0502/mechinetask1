import 'package:flutter/material.dart';
import 'package:mechinenoti/Common/heading.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Top_Pickups/top_Container.dart';

class TopPickups extends StatelessWidget {
  const TopPickups({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Heading(headings: "Top picks for you"),
        const SizedBox(height: 16),
        TopContainer(),
      ],
    );
  }
}