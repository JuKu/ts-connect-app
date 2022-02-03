import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ts_connect_app/presentation/root/rootwidget.dart';
import 'package:ts_connect_app/presentation/shared/server_settings.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsOfServiceActivity extends StatefulWidget {
  const TermsOfServiceActivity({Key? key}) : super(key: key);

  @override
  _TermsOfServiceActivityState createState() => _TermsOfServiceActivityState();
}

class _TermsOfServiceActivityState extends State<TermsOfServiceActivity> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Terms of Service"),
          centerTitle: true,
          //leading: const Icon(Icons.privacy_tip),
        ),
        //see also: https://pub.dev/packages/webview_flutter/example
        body: Column(
          children: [
            const Text("Terms of Service"),
            Expanded(child:
            WebView(
              initialUrl: ServerSettings.getTermsOfServiceUrl(),
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
              },
              onProgress: (int progress) {
                print('WebView is loading (progress : $progress%)');
              },
              javascriptChannels: <JavascriptChannel>{
                _toasterJavascriptChannel(context),
              },
              navigationDelegate: (NavigationRequest request) {
                if (request.url.startsWith('https://www.youtube.com/')) {
                  print('blocking navigation to $request}');
                  return NavigationDecision.prevent;
                }
                print('allowing navigation to $request');
                return NavigationDecision.navigate;
              },
              onPageStarted: (String url) {
                print('Page started loading: $url');
              },
              onPageFinished: (String url) {
                print('Page finished loading: $url');
              },
              gestureNavigationEnabled: true,
              backgroundColor: const Color(0x00000000),
            )),
            SizedBox(
              height: 200,
              child: TextButton(
                child: const Text("Akzeptieren"),
                onPressed: () {
                  print("accept terms of service");

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const RootWidget()));
                },
              ),
            )
          ],
        )
    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          // ignore: deprecated_member_use
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }
}