
import 'package:flutter/material.dart';

class APPWidget extends StatelessWidget {
  const APPWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 250),
        child: Image.asset(
          'assets/images/logo.png',
          //width: 200,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: Color(0xFF176B87), // Change the color of the leading icon here
      ),
    );
  }
}
