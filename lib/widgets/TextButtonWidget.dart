
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
final  VoidCallback onTap;
  const TextButtonWidget({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
  return  TextButton(
        onPressed: onTap,
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.only(left: 40)),
        ),
        child:  Text(
        text,
          style:const  TextStyle(color: Color(0xFF176B87)),
        ),


  );
  }



}