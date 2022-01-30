import 'package:flutter/material.dart';
import 'package:ts_connect_app/presentation/login/widgets/login_form.dart';
import 'package:ts_connect_app/presentation/pages/settings/before_login/global_settings.dart';
import 'package:ts_connect_app/presentation/pages/settings/before_login/privacy_data.dart';
import 'package:ts_connect_app/presentation/shared/logo.dart';

///
///the login activity, where the user can login or register.
///
///@author Justin Kuenzel
///
class LoginActivity extends StatelessWidget {
  LoginActivity({Key? key}) : super(key: key);

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
            /*IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GlobalSettingsWidget()));
              },
              icon: const Icon(Icons.more_vert),
            ),*/
            PopupMenuButton(
                elevation: 40,
                onSelected: (value) {
                  switch (value) {
                    case 1:
                      //settings page
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const GlobalSettingsWidget()));
                      break;
                    case 2:
                      //privacy page
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const PrivacyDataActivity()));
                      break;
                  }
                },
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        child: Text("Einstellungen"),
                        value: 1,
                      ),
                      const PopupMenuItem(
                        child: Text("Datenschutz"),
                        value: 2,
                      )
                    ])
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              SizedBox(height: 40),
              /*const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/logo/Logo_512.png"),
            ),*/
              LogoWidget(width: 150, height: 150),
              SizedBox(height: 40),
              LoginFormWidget()
            ],
          ),
        ),
        /*const Center(
          child: Text("test"),
        ),*/
        backgroundColor: Theme.of(context).primaryColor,
        bottomNavigationBar: const SizedBox(
          height: 50.0,
          //color: Colors.white70,
          child: Center(
              child: Text(
            "Copyright ©2022, All Rights Reserved.\nPowered by JuKuSoft\n",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12.0,
                color: /*Color(0xFF162A49)*/ Colors.white60),
          )),
        ),
      ),
    );
  }
}
