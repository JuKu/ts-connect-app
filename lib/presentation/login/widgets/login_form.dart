import 'package:flutter/material.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(16),
        //this works only with Material()
        elevation: 8,
        child: Container(
          height: 300,
          width: 300,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          //color: Theme.of(context).secondaryHeaderColor,
          decoration: BoxDecoration(
            color: Colors.white60,
            border: Border.all(
                color: Colors.grey, width: 2.0, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //const Text("Benutzername:", style: TextStyle(fontSize: 22), ),
              const SizedBox(height: 20),
              const TextField(obscureText: false, decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Benutzername',
              )),
              const SizedBox(height: 20),
              //const Text("Passwort:", style: TextStyle(fontSize: 22), ),
              const TextField(obscureText: true, decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Passwort',
              )),
              const SizedBox(height: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                //borderRadius: const BorderRadius.all(2),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: const Text('Anmelden'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
