import 'package:flutter/material.dart';

class ReferText extends StatelessWidget {
  const ReferText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Refer & Earn",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),),
          Row(
            children: [
              Text("Invitre your friend & earn 15% off",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),),
              Icon(Icons.arrow_circle_right_rounded,color: Colors.white,)
            ],
          ),
        ],
      ),
    );
  }
}