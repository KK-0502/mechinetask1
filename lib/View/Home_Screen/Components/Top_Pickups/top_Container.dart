import 'package:flutter/material.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Top_Pickups/check_Button.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Top_Pickups/discount.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            width: 374,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: Color(0xFF06C25E),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Discount(), SizedBox(height: 10), CheckButton()],
                  ),
                  Image.asset("assets/image/fruits.png"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
