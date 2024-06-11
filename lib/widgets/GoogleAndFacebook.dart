import 'package:flutter/cupertino.dart';

class ButtonWithIcon extends StatelessWidget{
  final String? image;
  final VoidCallback ? onTap;

  const ButtonWithIcon({super.key, required this.onTap, required this.image});

  @override
  Widget build(BuildContext context) {
    return
        GestureDetector(
          onTap: (){},
          child:Image.asset(image!,width: 25,),




    );


  }


}