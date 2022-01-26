import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ts_connect_app/presentation/shared/server_settings.dart';
import 'package:webview_flutter/webview_flutter.dart';

const String testHTML = '''
t
''';

class PrivacyDataActivity extends StatefulWidget {
  const PrivacyDataActivity({Key? key}) : super(key: key);

  @override
  _PrivacyDataActivityState createState() => _PrivacyDataActivityState();
}

class _PrivacyDataActivityState extends State<PrivacyDataActivity> {
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
          title: const Text("Datenschutzerklärung"),
          centerTitle: true,
          //leading: const Icon(Icons.privacy_tip),
        ),
        //see also: https://pub.dev/packages/webview_flutter/example
        body: WebView(
          initialUrl: ServerSettings.getDataPrivacyUrl(),
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