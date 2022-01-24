import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FooterView(
        children: <Widget>[
          Center(
            child: Container(
              height: 300,
              width: 300,
              //color: Theme.of(context).secondaryHeaderColor,
              decoration: BoxDecoration(
                color: Colors.white60,
                border: Border.all(color: Colors.grey, width: 2.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          )
        ],
        footer: Footer(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Text('Copyright ©2022, All Rights Reserved.',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0, color: Color(0xFF162A49)),),
                Text('Powered by JuKuSoft',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0,color: Color(0xFF162A49)),),
              ]
          ),
        )
    );
  }
}
