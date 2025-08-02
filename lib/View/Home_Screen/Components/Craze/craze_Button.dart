import 'package:flutter/material.dart';

class CrazeButton extends StatelessWidget {
  const CrazeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Expolre",style: TextStyle(fontSize: 12,color: Color(0xFFEA7E00),fontWeight: FontWeight.w600)),
        Icon(Icons.arrow_forward_ios_outlined,color:Color(0xFFEA7E00),)
      ],
    );
  }
}