import 'package:flutter/cupertino.dart';

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
   // int curveHeight = 296;
    Offset controlPoint = Offset(size.width / 3, size.height  / 3);
    Offset endPoint = Offset(size.width, size.height - size.height / 2);

    Path path = Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
