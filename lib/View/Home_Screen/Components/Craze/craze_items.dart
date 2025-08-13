import 'package:flutter/material.dart';
import 'package:mechinenoti/Common/heading.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Craze/craze_Container.dart';

class CrazeItems extends StatelessWidget {
  const CrazeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Heading(headings: "Craze deals"),
        SizedBox(height: 10,),
        CrazeContainer(),
      ],
    );
  }
}