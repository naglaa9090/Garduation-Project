
import 'package:flutter/material.dart';
import 'package:gradproject/screens/FinishScreen.dart';
import 'package:gradproject/screens/HomePage.dart';
import 'package:gradproject/widgets/ElevatedButtonWidget.dart';
import 'package:gradproject/widgets/TextFieldWidget.dart';

import '../widgets/APPBar.dart';
import '../widgets/BottomClipPath.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      appBar:  const PreferredSize(
          preferredSize :  Size.fromHeight(kToolbarHeight),
          child:  APPWidget()

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
             const  Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Reset Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF176B87)),
                ),
              ),
            const   Padding(
                padding: EdgeInsets.only(top: 45, left: 20),
                child: Text(
                  "Enter your new password",
                  style: TextStyle(
                    wordSpacing: 1.5,
                    fontSize: 18,
                    color: Color(0xFF04364A),
                  ),
                ),
              ),
              Padding(
                padding:const  EdgeInsets.only(top: 20),
                child: TextFieldWidget(hintText: " Password"),
              ),
              TextFieldWidget(hintText: "Confirm Password",
                icon: const Icon(Icons.visibility_off_outlined, color: Color(0xFF176B87),),
              ),
             const  Padding(
                padding: EdgeInsets.only(top: 30),
                child: ElevatedButtonWidget(textToButton: "Submit", newScreen: FinishWidget()),
              ),
            const   SizedBox(height: 117,),
             const  BottomClipPath(),
            ],


          ),
        ),
      ),
    );
  }
}
