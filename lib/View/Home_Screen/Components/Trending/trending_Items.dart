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
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          mainAxisSpacing: 12,
          crossAxisSpacing: 0,
          childAspectRatio: 0.54,
        ),
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 80,
                child: ClipRRect(child: Image.asset("assets/image/ice.png",fit: BoxFit.cover,),
                borderRadius: BorderRadius.circular(10),
                ),
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
