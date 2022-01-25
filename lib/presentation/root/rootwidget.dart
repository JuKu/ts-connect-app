import 'package:flutter/material.dart';
import 'package:ts_connect_app/presentation/pages/settings/before_login/global_settings.dart';

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
          actions: [
            IconButton(
                onPressed: () {},
                //TODO: change the button color to red, if the user was mentioned,
                //yellow if there are new messages in last 10 minutes (or someone is active),
                //white, if no new messages are in chat.
                //TODO: change also the icon, if no new messages are in chat
                icon: const Icon(Icons.mark_chat_unread_rounded, color: Colors.white,)),
            /*IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
            ),*/
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GlobalSettingsWidget()));
              },
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: const Placeholder());
    ;
  }
}
