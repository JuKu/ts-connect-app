import 'package:flutter/material.dart';
import 'package:ts_connect_app/presentation/shared/logo.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: const [
                Text('TS Connect'),
                SizedBox(height: 20),
                LogoWidget(width: 100, height: 100)
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(AppLocalizations.of(context)!.my_profile),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(Icons.note),
            title: Text(AppLocalizations.of(context)!.notes_menu),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_box),
            title: Text(AppLocalizations.of(context)!.account_settings_menu),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Benachrichtigungen'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(Icons.support),
            title: const Text('Support'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          SizedBox(
              height: 2,
              child: DecoratedBox(
                  decoration:
                      BoxDecoration(color: Theme.of(context).primaryColor))),
          ListTile(
            leading: const Icon(Icons.admin_panel_settings),
            title: const Text('Admin'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(Icons.analytics),
            title: const Text('Statistiken'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          SizedBox(
              height: 2,
              child: DecoratedBox(
                  decoration:
                  BoxDecoration(color: Theme.of(context).primaryColor))),
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: Text(AppLocalizations.of(context)!.data_privacy_title),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(Icons.import_contacts_rounded),
            title: Text(AppLocalizations.of(context)!.imprint_title),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          const SizedBox(height: 20),
          SizedBox(
              height: 2,
              child: DecoratedBox(
                  decoration:
                      BoxDecoration(color: Theme.of(context).primaryColor))),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
