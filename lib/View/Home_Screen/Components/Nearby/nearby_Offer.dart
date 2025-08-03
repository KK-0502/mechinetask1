import 'package:flutter/material.dart';

class NearbyOffer extends StatelessWidget {
  const NearbyOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Image.asset("assets/image/icon1.png"),
            SizedBox(width: 5,),
            Text("Upto 10% OFF",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),)
          ],
        ),
        SizedBox(width: 20,),
        Image.asset("assets/image/icon2.png",scale: 1.4,),
      ],
    );
  }
}