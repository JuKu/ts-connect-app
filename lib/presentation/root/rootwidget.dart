import 'package:flutter/material.dart';
import 'package:ts_connect_app/presentation/menu/drawer-menu.dart';
import 'package:ts_connect_app/presentation/pages/messages/messages.dart';
import 'package:ts_connect_app/presentation/pages/settings/before_login/global_settings.dart';
import 'package:ts_connect_app/presentation/pages/wip/wip.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<RootWidget> {
  int _currentIndex = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
              icon: const Icon(
                Icons.mark_chat_unread_rounded,
                color: Colors.white,
              )),
          /*IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
            ),*/
          IconButton(
            onPressed: () {
              /*Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GlobalSettingsWidget()));*/

              _scaffoldKey.currentState!.openEndDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      endDrawer: const DrawerMenuWidget(),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          WIPWidget(),
          MessagesWidget(),
          WIPWidget(),
          WIPWidget(),
          WIPWidget(),
          //TODO: add pages here
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), label: "Nachrichten"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Freunde"),
          BottomNavigationBarItem(
              icon: Icon(Icons.connect_without_contact), label: "Connect"),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet), label: "Forum & Material"),
        ],
      ),
    );
  }
}
