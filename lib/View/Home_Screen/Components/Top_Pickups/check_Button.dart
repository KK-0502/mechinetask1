import 'package:flutter/material.dart';

class CheckButton extends StatelessWidget {
  const CheckButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 160,
      decoration: BoxDecoration(
        color: Color(0xFFFF8918),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Center(
      child: Text("Check Now",style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w600),
      ),
      )
    );
  }
}