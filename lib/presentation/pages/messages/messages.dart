import 'package:flutter/material.dart';

abstract class MessageListItem {
  //build the row
  Widget buildRow(BuildContext context);
}

class MessageChannelListItem extends MessageListItem {
  late int messageCount;

  MessageChannelListItem({required this.messageCount});

  @override
  Widget buildRow(BuildContext context) {
    return Stack(
      children: [
        ListTile(
          leading: const Icon(Icons.forum, size: 40),
          title: const Text("Irgendein Titel",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          subtitle: const Text("Meine Nachricht bla bla bla"),
          onTap: () {
            const snackBar = SnackBar(content: Text('Tap'));

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ),
        Positioned(
          top: 20,
          right: 10,
          //see also: https://stackoverflow.com/questions/59170037/multiple-buttons-texts-in-a-circle-in-flutter
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.red),
              shape: BoxShape.circle,
              // You can use like this way or like the below line
              //borderRadius: new BorderRadius.circular(30.0),
              color: Colors.red,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$messageCount',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class MessagesWidget extends StatefulWidget {
  const MessagesWidget({Key? key}) : super(key: key);

  @override
  _MessagesWidgetState createState() => _MessagesWidgetState();
}

class _MessagesWidgetState extends State<MessagesWidget> {
  late List<MessageListItem> items;

  _MessagesWidgetState() {
    int counter = 1;
    items = List<MessageListItem>.generate(
        1000, (i) => MessageChannelListItem(messageCount: counter++));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Let the ListView know how many items it needs to build.
      itemCount: items.length,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, index) {
        final item = items[index];

        return item.buildRow(context);
      },
    );
  }
}
