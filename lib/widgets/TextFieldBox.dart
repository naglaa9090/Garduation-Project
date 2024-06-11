
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldBox extends StatelessWidget {
  const TextFieldBox({super.key});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(border: Border.all(color: const Color(0xFF64CCC5),
          width: 2
      ),
          borderRadius: BorderRadius.circular(8)
      ),
      child:  TextField(
        textAlign: TextAlign.center,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        style: const TextStyle(fontSize: 20,
            color: Color(0xFF276660)
        ),
        decoration: const  InputDecoration(
          constraints: BoxConstraints(maxHeight: 40,maxWidth: 40),
          focusedBorder:  UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF64CCC5)),
          ),

        ),
      ),

    );
  }
}
