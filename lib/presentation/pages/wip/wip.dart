import 'package:flutter/material.dart';

class WIPWidget extends StatelessWidget {
  const WIPWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Column(
                      children: const [
                        Text("WIP", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                        Text("Dieser Teil der App ist noch nicht programmiert."),
                      ],
                    )
                  ),
                ])));
  }
}
