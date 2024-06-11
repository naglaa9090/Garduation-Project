
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget{
 final String hintText;
  Widget?  icon ;

  TextFieldWidget({super.key, required this.hintText,this.icon});

  @override
  Widget build(BuildContext context) {
  return  TextField(

        decoration: InputDecoration(
          iconColor: const Color(0xFF176B87),
          suffixIcon:icon ,
          hintText: hintText,
          contentPadding: const EdgeInsets.only(left: 25.0),
          hintStyle: const TextStyle(
              color: Color(0xFF176B87),

          ),

          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF176B87)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 2.5,
              color: Color(0xFF1D7997),
            ),
          ),
        ),

  );
  }

}