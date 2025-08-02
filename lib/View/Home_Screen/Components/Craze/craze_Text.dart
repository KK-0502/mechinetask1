import 'package:flutter/material.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Craze/craze_Button.dart';

class CrazeText extends StatelessWidget {
  const CrazeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Customer favourite\ntop supermarkets",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
        CrazeButton(),
      ],
    );
  }
}