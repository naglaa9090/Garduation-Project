import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradproject/screens/HomePage.dart';
import 'package:gradproject/widgets/ElevatedButtonWidget.dart';

import '../widgets/APPBar.dart';
import '../widgets/BottomClipPath.dart';

class FinishWidget extends StatelessWidget {
  const FinishWidget({super.key});
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     backgroundColor: Colors.white,
     appBar: const  PreferredSize(
         preferredSize :  Size.fromHeight(kToolbarHeight),
         child:  APPWidget()

     ),
     body: SingleChildScrollView(
       child: Center(
         child: Column(
           children: [
         Padding(
           padding: const EdgeInsets.only(top: 30),
           child: Image.asset("assets/images/finish.png", width: 110,),
         ),
            const Padding(
              padding:  EdgeInsets.only(top: 20,),
              child:  Text("Your password ",
                style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF64C6CC)
                ),
              ),
            ),
            const   Text(" has been modified",
                 style: TextStyle(fontSize: 25,
                     fontWeight: FontWeight.bold,
                     color: Color(0xFF64C6CC)
                 ),
               ),
            const Padding(
               padding:  EdgeInsets.only(top: 90),
               child:  ElevatedButtonWidget(textToButton:"Finish", newScreen: HomePage(), ),

             ),
            const  SizedBox(height: 126,),
            const  BottomClipPath(),



  ]


         ),
       ),
     ),
   );
  }
}
