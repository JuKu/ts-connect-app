import 'package:flutter/material.dart';

class GlobalSettingsWidget extends StatefulWidget {
  const GlobalSettingsWidget({Key? key}) : super(key: key);

  @override
  _GlobalSettingsWidgetState createState() => _GlobalSettingsWidgetState();
}

class _GlobalSettingsWidgetState extends State<GlobalSettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Einstellungen"),
        centerTitle: true,
        //leading: const Icon(Icons.settings),
        actions: const [
          /*IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
            ),*/
          /*IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const GlobalSettingsWidget()));
            },
            icon: const Icon(Icons.more_vert),
          ),*/
        ],
      ),
      body: Placeholder()
    );
  }
}
