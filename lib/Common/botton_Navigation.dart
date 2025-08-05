import 'package:flutter/material.dart';
import 'package:mechinenoti/View/Home_Screen/home_Screen.dart';

class BottonNavigation extends StatelessWidget {
  const BottonNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
         selectedItemColor: Color(0xFF89D177),
        items: const [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 24,
              child: ImageIcon(AssetImage("assets/image/ghome.png")),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 24,
              child: ImageIcon(AssetImage("assets/image/bask.png")),
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 24,
              child: ImageIcon(AssetImage("assets/image/bag.png")),
            ),
            label: "My Order",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 24,
              child: ImageIcon(AssetImage("assets/image/pep.png")),
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
