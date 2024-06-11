import 'package:flutter/material.dart';

import 'package:gradproject/screens/HomePage.dart';

import 'package:gradproject/screens/ProfilePage.dart';
import 'package:gradproject/screens/login.dart';
import 'package:gradproject/widgets/IconsMode.dart';
import 'package:gradproject/widgets/LoginScrollView.dart';
import 'package:gradproject/widgets/Profile&SettingsIcons.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Row(
                children: [
                  IconButton(
                    color: const Color(0xFF176B87),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 80),
                  const Text(
                    "Settings",
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF135F79),
                    ),
                  ),
                  const SizedBox(width: 80),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 60),
              child: ProfileAndSettingsIcons(
                  icon: Icon(
                    Icons.perm_identity_rounded,
                    color: Color(0xFF04364A),
                  ),
                  newPage: ProfilePage(),
                  text: "Account"),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: ProfileAndSettingsIcons(
                  icon: Icon(
                    Icons.perm_contact_cal_sharp,
                    color: Color(0xFF04364A),
                  ),
                  newPage: LoginPage(),
                  text: "Edit login details"),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: ProfileAndSettingsIcons(
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: Color(0xFF04364A),
                  ),
                  newPage: HomePage(),
                  text: "Your Location"),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: IconsMode(
                  icon: Icon(
                    Icons.notifications_none_sharp,
                    color: Color(0xFF04364A),
                  ),

                  text: "Notifications"),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: ProfileAndSettingsIcons(
                  icon: Icon(
                    Icons.privacy_tip,
                    color: Color(0xFF04364A),
                  ),
                  newPage: HomePage(),
                  text: "Privacy and policy "),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: IconsMode(
                  icon:CircleAvatar(
                    maxRadius: 12,
                    backgroundColor: Color(0xFF04364A),
                    child: Icon(

                      Icons.dark_mode_outlined,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),

                  text: "Dark mode"),
            ),
          ],
        ),
      ),
    );
  }
}
