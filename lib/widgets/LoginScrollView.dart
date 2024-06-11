import 'package:flutter/material.dart';

import 'package:gradproject/widgets/CurvedBar.dart';

import '../screens/ForgetPassword.dart';
import 'BottomClipPath.dart';
import 'TextWith Divider.dart';
import 'ElevatedButtonWidget.dart';
import 'GoogleAndFacebook.dart';
import 'TextButtonWidget.dart';
import 'TextFieldWidget.dart';
import 'TopClipPath.dart';

class LoginScrollView extends StatelessWidget {
  const LoginScrollView({super.key, });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              // Original ClipPath with shaped container
              const TopClipPath(),
              // Positioned widget for the "Login" text
              Positioned(
                bottom: 40,
                left: 0,
                right: 0,
                child: Container(
                  width: screenWidth,
                  alignment: Alignment.center,
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xFF176B87),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
           Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFieldWidget(
                  hintText: 'enter email or user name',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFieldWidget(
                  hintText: 'Password',
                  icon: const Icon(Icons.visibility_off_outlined,color: Color(0xFF176B87)),

                ),
              ),
            ],
          ),
       const    ElevatedButtonWidget(
            textToButton: 'Login',
            newScreen: CurvedBar(),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextButtonWidget(
                text: "forget password ?",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) {
                      return const ForgetPassword();
                    },
                  ));
                },
              ),
            ),
          ),
        const   ButtonWithDivider(text: 'or continue with'),
         const  SizedBox(height: 20),
          Row(
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
         const  SizedBox(height: 15),
          TextButtonWidget(
            text: "Don’t have an account? SignUP",
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (_) {
              //     return const ForgetPassword();
              //   },
              // ));
            },
          ),
         const  BottomClipPath(),
        ],
      ),
    );
  }
}
