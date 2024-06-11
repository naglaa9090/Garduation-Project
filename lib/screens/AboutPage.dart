import 'package:flutter/material.dart';
import 'package:gradproject/widgets/TextFieldWidget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: screenWidth,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF64C6CC),
                    Color(0xFFFFFFFF),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          color: const Color(0xFF176B87),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.arrow_back),
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          "About Me",
                          style: TextStyle(
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xFF135F79),
                          ),
                        ),
                       const  SizedBox(width: 20,),
                        Image.asset(
                          'assets/images/logo.png',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/Pro.png",
                            width: 100,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: () {},
                              child: const CircleAvatar(
                                backgroundColor: Color(0xFF90BFC9),
                                maxRadius: 20,
                                child: Icon(Icons.camera_alt_outlined, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 20, 32, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "First Name",
                    style: TextStyle(color: Color(0xFF176B87), letterSpacing: 1, fontSize: 18,),
                  ),
                  const SizedBox(height: 10),
                  TextFieldWidget(hintText: "Enter first name"),
                  const SizedBox(height: 20),
                  const Text(
                    "Last Name",
                    style: TextStyle(color: Color(0xFF176B87), letterSpacing: 1, fontSize: 18,),
                  ),
                  const SizedBox(height: 10),
                  TextFieldWidget(hintText: "Enter Last name"),
                  const SizedBox(height: 20),
                  const Text(
                    "Phone",
                    style: TextStyle(color: Color(0xFF176B87), letterSpacing: 1, fontSize: 18,),
                  ),
                  const SizedBox(height: 10),
                  TextFieldWidget(hintText: "Your number"),
                  const SizedBox(height: 20),
                  const Text(
                    "Email",
                    style: TextStyle(color: Color(0xFF176B87), letterSpacing: 1, fontSize: 18,),
                  ),
                  const SizedBox(height: 10),
                  TextFieldWidget(hintText: "Enter your email"),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
