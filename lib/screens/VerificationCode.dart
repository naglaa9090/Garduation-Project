import 'package:flutter/material.dart';

import 'package:gradproject/screens/ResetPassword.dart';
import 'package:gradproject/widgets/ElevatedButtonWidget.dart';
import 'package:gradproject/widgets/TextFieldBox.dart';

import '../widgets/APPBar.dart';
import '../widgets/BottomClipPath.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: APPWidget(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
               Padding(
                 padding: EdgeInsets.only(top: 10),
                 child: Text(
                  "Verification",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF176B87)),
              ),
               ),
               Padding(
                padding: EdgeInsets.only(top: 45,),
                child: Text(
                  "Please enter the 6 digit code sent ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF04364A),
                  ),
                ),
              ),

                 Padding(
                   padding: EdgeInsets.only(right: 100),
                   child: Text(
                    "to your email address",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF04364A),
                    ),

              ),
                 ),
              Padding(
                padding:  EdgeInsets.only(top: 80),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFieldBox(),
                    TextFieldBox(),
                    TextFieldBox(),
                    TextFieldBox(),
                    TextFieldBox(),
                    TextFieldBox(),
                  ],
                ),
                ),

               Padding(
                padding: EdgeInsets.only(top: 43),
                child: ElevatedButtonWidget(
                  textToButton: 'Verify',
                  newScreen: ResetPassword(),
                ),
              ),
               Padding(
                padding: EdgeInsets.only(top: 35),
                child: ElevatedButtonWidget(
                  textToButton: 'Resend Code',
                  newScreen: ResetPassword(),
                ),
              ),
               SizedBox(height: 96,),
               BottomClipPath(),
            ],
          ),
        ),
      )
    );
  }
}
