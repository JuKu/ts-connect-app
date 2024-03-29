import 'package:flutter/material.dart';
import 'package:ts_connect_app/presentation/login/widgets/login_form.dart';
import 'package:ts_connect_app/presentation/pages/settings/before_login/global_settings.dart';
import 'package:ts_connect_app/presentation/pages/settings/before_login/imprint.dart';
import 'package:ts_connect_app/presentation/pages/settings/before_login/info_page.dart';
import 'package:ts_connect_app/presentation/pages/settings/before_login/privacy_data.dart';
import 'package:ts_connect_app/presentation/shared/logo.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

///
///the login activity, where the user can login or register.
///
///@author Justin Kuenzel
///
class LoginActivity extends StatelessWidget {
  const LoginActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  case 3:
                  //info page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InfoActivity()));
                    break;
                  case 4:
                  //imprint page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ImprintActivity()));
                    break;
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text(AppLocalizations.of(context)!.settings_title),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text(AppLocalizations.of(context)!.data_privacy_title),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text(AppLocalizations.of(context)!.info_title),
                  value: 3,
                ),
                PopupMenuItem(
                  child: Text(AppLocalizations.of(context)!.imprint_title),
                  value: 4,
                )
              ])
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 40),
            /*const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/logo/Logo_512.png"),
            ),*/
            const LogoWidget(width: 150, height: 150),
            const SizedBox(height: 40),
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
    );
  }
}
