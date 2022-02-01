import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:ts_connect_app/presentation/shared/server_settings.dart';

class GlobalSettingsWidget extends StatefulWidget {
  const GlobalSettingsWidget({Key? key}) : super(key: key);

  @override
  _GlobalSettingsWidgetState createState() => _GlobalSettingsWidgetState();
}

class _GlobalSettingsWidgetState extends State<GlobalSettingsWidget> {
  @override
  Widget build(BuildContext context) {
    //see also: https://pub.dev/packages/flutter_settings_screens

    return SettingsScreen(title: "Einstellungen", children: [
      SettingsGroup(title: "Allgemein", children: [
        DropDownSettingsTile<String>(
          title: 'Server',
          settingKey: 'server-url',
          values: ServerSettings.servers,
          selected: ServerSettings.defaultServer,
          onChange: (value) {
            debugPrint('server url: $value');
          },
        ),
      ]),
      SettingsGroup(
        title: 'Datenschutz',
        children: <Widget>[
          CheckboxSettingsTile(
            settingKey: 'crashlytics-enabled',
            title: 'Crash Reports zum Entwickler senden',
            enabledLabel: 'Enabled',
            disabledLabel: 'Disabled',
            leading: const Icon(Icons.bug_report),
          ),
          /*SwitchSettingsTile(
            settingKey: 'key-dark-mode',
            title: 'Dark Mode',
            enabledLabel: 'Enabled',
            disabledLabel: 'Disabled',
            leading: const Icon(Icons.palette),
          ),*/
        ],
      ),
      SettingsGroup(title: "Entwickleroptionen", children: [
        SwitchSettingsTile(
          settingKey: 'developer-options',
          title: 'Entwickleroptionen aktivieren',
          enabledLabel: 'Enabled',
          disabledLabel: 'Disabled',
          leading: const Icon(Icons.developer_mode),
          onChange: (bool enabled) => {
            if (enabled)
              {
                //subscribe to developer dev topics to get developer notifications
                FirebaseMessaging.instance.subscribeToTopic("all-devs")
              }
            else
              {
                //subscribe to developer dev topics to get developer notifications
                FirebaseMessaging.instance.unsubscribeFromTopic("all-devs")
              }
          },
        ),
      ]),
    ]);
  }
}
