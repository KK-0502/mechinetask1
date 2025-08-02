import 'package:flutter/material.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Refer/refer_text.dart';

class ReferBody extends StatelessWidget {
  const ReferBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF29D177)
      ),
      child: Row(
        children: [
          ReferText(),
          Image.asset("assets/image/gift.png")
        ],
      ),
    );
  }
}