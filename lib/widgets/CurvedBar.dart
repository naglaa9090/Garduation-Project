import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gradproject/screens/CartPage.dart';
import 'package:gradproject/screens/FavouritePage.dart';
import 'package:gradproject/screens/HomePage.dart';
import 'package:gradproject/screens/ProfilePage.dart';
import 'package:gradproject/screens/TestVision.dart';

class CurvedBar extends StatefulWidget {
  const CurvedBar({super.key});

  @override
  State<CurvedBar> createState() => _CurvedBarState();
}

class _CurvedBarState extends State<CurvedBar> {
  int index =0;
  final screen = const [
    HomePage(),
    FavoritePage(),
    CartPage(),
    TestVision(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = [
      const Icon(
        Icons.home_rounded,
        size: 25,
        color: Colors.white,
      ),
      const Icon(
        Icons.favorite_rounded,
        size: 25,
        color: Colors.white,
      ),
      const Icon(
        Icons.shopping_cart_rounded,
        size: 25,
        color: Colors.white,
      ),
      const Icon(
        Icons.visibility,
        size: 25,
        color: Colors.white,
      ),
      const Icon(
        Icons.person,
        size: 30,
        color: Colors.white,
      ),
    ];
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
         // buttonBackgroundColor: const Color(0xFF176B87),
          color: const Color(0xFF176B87),
          items: items,
         index: index,
        onTap: (index)=>setState(() { 
               this.index=index;
        }),

      ),
    );
  }
}
