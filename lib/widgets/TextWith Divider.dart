
import 'package:flutter/material.dart';
class ButtonWithDivider extends StatelessWidget {
  final String text;
  const ButtonWithDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: Divider(
            color: Color(0xFF176B87),
            height: 10,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child:  Text(

             text,
              style:const  TextStyle(color: Color(0xFF176B87),
              wordSpacing: 2,
                fontSize: 15
              ),
            ),
          ),

        const Expanded(
          child: Divider(
            color: Color(0xFF176B87),
            height: 10,
          ),
        ),
      ],
    );
  }


}