import 'package:flutter/material.dart';
import 'package:ts_connect_app/presentation/login/widgets/login_form.dart';

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
          title: const Text("TenSing Connect"),
          centerTitle: true,
          leading: const Icon(Icons.home),
          actions: [
            /*IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
            ),*/
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: const LoginFormWidget(),/*const Center(
          child: Text("test"),
        ),*/
        backgroundColor: Theme.of(context).primaryColor,
        bottomNavigationBar: Container(
          height: 50.0,
          //color: Colors.white70,
          child: const Center(
            child: Text("Copyright ©2022, All Rights Reserved.\nPowered by JuKuSoft", style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0, color: /*Color(0xFF162A49)*/Colors.white60),)
          ),
        ),
      ),
    );
  }
}
