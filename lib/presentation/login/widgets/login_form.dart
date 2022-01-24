import 'package:flutter/material.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        //color: Theme.of(context).secondaryHeaderColor,
        decoration: BoxDecoration(
          color: Colors.white60,
          border: Border.all(
              color: Colors.grey, width: 2.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
