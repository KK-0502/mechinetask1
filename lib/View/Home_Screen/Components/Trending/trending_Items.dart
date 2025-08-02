import 'package:flutter/material.dart';
import 'package:mechinenoti/View/Home_Screen/Components/Trending/items_Details.dart';

class TrendingItems extends StatelessWidget {
  const TrendingItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300, 
      child: GridView.builder(
        scrollDirection: Axis.horizontal, 
        itemCount: 5,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.54,
        ),
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 121,
                width: 80,
                child: Image.asset("assets/image/ice.png"),
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: ItemsDetails(),
             ),
            ],
          );
        },
      ),
    );
  }
}
