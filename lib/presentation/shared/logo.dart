import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double width;
  final double height;

  const LogoWidget({Key? key, required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/logo/Logo_512.png"),
          //fit: BoxFit.cover
        ));
  }
}
