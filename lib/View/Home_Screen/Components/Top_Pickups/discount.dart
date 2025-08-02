import 'package:flutter/material.dart';

class Discount extends StatelessWidget {
  const Discount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Discount\n25% All\nFruits",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),);
  }
}