import 'package:flutter/material.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<RootWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("TenSing Connect"),
          centerTitle: true,
          leading: const Icon(Icons.home),
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
        body: const Placeholder()
    );;
  }
}
