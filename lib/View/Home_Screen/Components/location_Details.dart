import 'package:flutter/material.dart';

class LocationDetails extends StatelessWidget {
  const LocationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.location_on_sharp,color: Color(0xFF29D177),size: 30,),
        Text("ABCD, New Delhi",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xFF29D177),size: 30,),
      ],
    );
  }
}