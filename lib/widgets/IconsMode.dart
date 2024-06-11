
import 'package:flutter/material.dart';

class IconsMode extends StatelessWidget {
  final Widget icon;

  final String text;
  const IconsMode(
      {super.key,
        required this.icon,

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

                },
                icon: const Icon(Icons.toggle_off_outlined,
                      size: 30, color: Color(0xFF176B87)),
                )),

        ],

    );
  }
}
