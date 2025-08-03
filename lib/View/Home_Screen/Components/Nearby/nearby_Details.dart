
import 'package:flutter/material.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Nearby/nearby_Offer.dart';

class NearbyDetails extends StatelessWidget {
  const NearbyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Freashly Backer",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Text("Sweets, North Indian"),
                Text("Site No - 1 | 6.4 kms"),
                SizedBox(height: 10,),
                Container(
                  width: 48,
                  height: 16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color.fromARGB(255, 211, 219, 255),
                  ),
                  child: Center(
                    child: Text(
                      "Top Store",
                      style: TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [Icon(Icons.star), Text("4.1")]),
                Text(
                  "45 mins",
                  style: TextStyle(
                    color: Color(0xFFEA7E00),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 5,),
        SizedBox(
          width: 225,
          child: Image.asset("assets/image/line.png")),
          SizedBox(height: 5,),
          NearbyOffer(),
      ],
    );
  }
}
