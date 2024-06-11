
import 'package:flutter/cupertino.dart';

import 'CustomClipperCurve2.dart';

class BottomClipPath extends StatelessWidget
{

   const BottomClipPath({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
   return ClipPath(
     clipper:
     ContainerClipper2(), // Assuming ContainerClipper2 is defined properly
     child: Container(
       height: screenHeight * 0.25, // 25% of screen height
       width: screenWidth,
       decoration: const BoxDecoration(
         gradient: LinearGradient(
           colors: [Color(0xFF0A445B), Color(0xFF041F29)],
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
         ),
       ),
     ),
   );

  }



}