import 'package:flutter/material.dart';

class ViewButton extends StatelessWidget {
  const ViewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFF29d177),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text("View all stores",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),),
      ),
    );
  }
}