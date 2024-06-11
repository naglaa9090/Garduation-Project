import 'package:flutter/material.dart';
import 'package:gradproject/screens/AboutPage.dart';
import 'package:gradproject/screens/HomePage.dart';
import 'package:gradproject/screens/SettingsPage.dart';
import 'package:gradproject/screens/login.dart';
import 'package:gradproject/widgets/Profile&SettingsIcons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: screenWidth, // Set the width to the screen width
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF4FA9AE),
                    Color(0xFF64C6CC),
                    Color(0xFFFFFFFF),
                  ],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align children to start and end
                      children: [
                        IconButton(
                          color: const Color(0xFF176B87),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back),
                        ),
                        Image.asset(
                          'assets/images/logo.png', // Replace with your image path
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF135F79),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 45),
                        child: Image.asset(
                          'assets/images/Pro.png', // Replace with your image path
                          width: 90,
                          height: 90,
                        ),
                      ),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10.0, top: 50),
                            child: Text(
                              "Marwa Gamal",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF062631),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 30),
                            child: Text(
                              "Marwa@gmail.com",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF062631),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: ProfileAndSettingsIcons(
                icon: Icon(Icons.notifications_outlined, color: Color(0xFF04364A)),
                newPage: HomePage(),
                text: "Notifications",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: ProfileAndSettingsIcons(
                icon: Icon(Icons.info_outlined, color: Color(0xFF04364A)),
                newPage: AboutPage(),
                text: "About",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: ProfileAndSettingsIcons(
                icon: Icon(Icons.card_travel_rounded, color: Color(0xFF04364A)),
                newPage: HomePage(),
                text: "My orders",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: ProfileAndSettingsIcons(
                icon: Icon(Icons.settings, color: Color(0xFF04364A)),
                newPage: SettingsPage(),
                text: "Settings",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: ProfileAndSettingsIcons(
                icon: Icon(Icons.help_outline_outlined, color: Color(0xFF04364A)),
                newPage: AboutPage(),
                text: "Help",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: ProfileAndSettingsIcons(
                icon: Icon(Icons.logout, color: Color(0xFF04364A)),
                newPage: LoginPage(),
                text: "LogOut",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
