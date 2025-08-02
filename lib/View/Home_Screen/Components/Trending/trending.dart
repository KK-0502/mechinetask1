import 'package:flutter/material.dart';
import 'package:mechinenoti/Common/heading.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Trending/trending_Items.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Heading(headings: "Trending"),
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
        TrendingItems(),
      ],
    );
  }
}
