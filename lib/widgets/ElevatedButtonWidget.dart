import 'package:flutter/material.dart';
import 'package:gradproject/screens/HomePage.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String textToButton;
    final Widget newScreen;
  const ElevatedButtonWidget({
    Key? key,
    required this.textToButton,
    required this.newScreen,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return newScreen;
        }));
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Adjust the border radius as needed
          ),
        ),
        minimumSize: MaterialStateProperty.all<Size>(const Size(320, 50)),
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xFF176B87), // Background color of the button
        ),
      ),
      child: Text(
        textToButton,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
