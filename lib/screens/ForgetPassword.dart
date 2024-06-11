
import 'package:flutter/material.dart';
import 'package:gradproject/screens/VerificationCode.dart';
import 'package:gradproject/widgets/APPBar.dart';
import 'package:gradproject/widgets/TextFieldWidget.dart';

import '../widgets/BottomClipPath.dart';
import '../widgets/TextWith Divider.dart';
import '../widgets/ElevatedButtonWidget.dart';
import '../widgets/GoogleAndFacebook.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    super.key,
  });

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
                const Padding(
                  padding: EdgeInsets.only(top: 10,),
                  child: Text(
                    " Forget Password",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFF176B87)),
                  ),
                ),
                Padding(
                  padding:const  EdgeInsets.only(top: 100, left: 20,right: 20),
                  child: TextFieldWidget(
                    hintText: 'Email Or Password',
                    icon: const Icon(Icons.visibility_off_outlined,color: Color(0xFF176B87)),
                  ),
                ),
                const  Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButtonWidget(
                    textToButton: 'Send', newScreen: VerificationCode(),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: ButtonWithDivider(
                    text: 'or continue with',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: ButtonWithIcon(
                          onTap: () {},
                          image: 'assets/images/img1.png',
                        ),
                      ),
                      ButtonWithIcon(
                        onTap: () {},
                        image: 'assets/images/img2.png',
                      ),
                    ],
                  ),
                ),
               const SizedBox(height: 120,),

                const  BottomClipPath()
              ],
            ),
          ),
        ),

    );
  }
}