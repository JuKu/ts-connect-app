import 'package:flutter/material.dart';

/**
 * the login activity, where the user can login or register.
 *
 * @author Justin Kuenzel
 */
class LoginActivity extends StatelessWidget {
  const LoginActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text("TenSing Connect")
        ),
        body: const Center(
          child:
          Text("test"),
        ),
      ),
    );
  }
}
