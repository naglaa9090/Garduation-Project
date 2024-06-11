
import 'package:flutter/material.dart';

class ProfileAndSettingsIcons extends StatelessWidget {
  final Widget icon;
  final Widget newPage;
  final String text;
  const ProfileAndSettingsIcons(
      {super.key,
      required this.icon,
      required this.newPage,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon, //

        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            text,
            style: const TextStyle(
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Color(0xFF04364A),
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return newPage;
                }));
              },
              icon: const CircleAvatar(
                radius: 12,
                backgroundColor: Color(0xFF176B87),
                child: Icon(Icons.arrow_forward,
                    size: 15, color: Colors.white),
              )),
        )
      ],
    );
  }
}
