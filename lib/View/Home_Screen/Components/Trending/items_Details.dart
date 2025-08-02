import 'package:flutter/material.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Mithas Bhandar",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
        Text("Sweets, North Indian"),
        Text("(store location)  |  6.4 kms"),
        Row(
          children: [
            Icon(Icons.star),
            Text("4.1  |  45 mins")
          ],
        )
      ],
    );
  }
}