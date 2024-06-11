import 'package:flutter/cupertino.dart';

import 'CustomClipperCurve1.dart';

class TopClipPath extends StatelessWidget{
  const TopClipPath({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
   return   ClipPath(
     clipper: ContainerClipper(), // Changed to ContainerClipper1
     child: Container(
       height: screenHeight * 0.25, // 25% of screen height
       width: screenWidth,
       decoration: const BoxDecoration(
         gradient: LinearGradient(
           colors: [Color(0xFF0A445B), Color(0xFF05232E)],
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
         ),
       ),
     ),
   );
  }


}