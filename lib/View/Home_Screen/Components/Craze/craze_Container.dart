import 'package:flutter/material.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Craze/craze_Text.dart';

class CrazeContainer extends StatelessWidget {
  const CrazeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context,index){
        return Container(
          width: 343,
           margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CrazeText(),
              Image.asset("assets/image/craze.png")
            ],
          ),
        );
      }),
    );
  }
}