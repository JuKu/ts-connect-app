import 'dart:developer';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:package_info_plus/package_info_plus.dart';

class InfoActivity extends StatefulWidget {
  const InfoActivity({Key? key}) : super(key: key);

  @override
  _InfoActivityState createState() => _InfoActivityState();
}

class _InfoActivityState extends State<InfoActivity> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
  );

  late String _firebaseRegisterToken;

  @override
  void initState() {
    super.initState();
    _initPackageInfo();

    if (Platform.isIOS) iOSPermission();
    FirebaseMessaging.instance.getToken().then((String? value) {
      setState(() => {_firebaseRegisterToken = value!});
      log("firebase registration token: " + value!);
    });
  }

  void iOSPermission() {
    FirebaseMessaging.instance
        .requestPermission()
        .then((value) => {setState(() => {})});
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  Widget _infoTile(String title, String subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle.isEmpty ? 'Not set' : subtitle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Info"),
          centerTitle: true,
          //leading: const Icon(Icons.privacy_tip),
        ),
        //see also: https://pub.dev/packages/webview_flutter/example
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            const Text(
              "App Information",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _infoTile('App name', _packageInfo.appName),
                _infoTile('Package name', _packageInfo.packageName),
                _infoTile('App version', _packageInfo.version),
                _infoTile('Build number', _packageInfo.buildNumber),
                _infoTile('Build signature', _packageInfo.buildSignature),
                if (Settings.getValue("developer-options", false) == true)_infoTile('Firebase Messaging Token', _firebaseRegisterToken),
              ],
            ),
          ]),
        ));
  }
}
