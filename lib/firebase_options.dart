// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCEeQyQfU0gh0Gxv6cslzU4IS0ClHLk1oY',
    appId: '1:343346210444:web:e4773ea55bd58585a07da9',
    messagingSenderId: '343346210444',
    projectId: 'tensing-connect',
    authDomain: 'tensing-connect.firebaseapp.com',
    storageBucket: 'tensing-connect.appspot.com',
    measurementId: 'G-725B61K6NZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC9SdSq55Nolb1xnbsfPWyhGC8wBRWPZfM',
    appId: '1:343346210444:android:a4cc072c5d22c04fa07da9',
    messagingSenderId: '343346210444',
    projectId: 'tensing-connect',
    storageBucket: 'tensing-connect.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcRyyHmCbGvsHL448O-R28S4FxxVPpqLA',
    appId: '1:343346210444:ios:5804dcd20b373b16a07da9',
    messagingSenderId: '343346210444',
    projectId: 'tensing-connect',
    storageBucket: 'tensing-connect.appspot.com',
    iosClientId: '343346210444-pkf84utvkdmlajlt9601g1ovhnkfcvnb.apps.googleusercontent.com',
    iosBundleId: 'com.jukusoft.tsconnect',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBcRyyHmCbGvsHL448O-R28S4FxxVPpqLA',
    appId: '1:343346210444:ios:5804dcd20b373b16a07da9',
    messagingSenderId: '343346210444',
    projectId: 'tensing-connect',
    storageBucket: 'tensing-connect.appspot.com',
    iosClientId: '343346210444-pkf84utvkdmlajlt9601g1ovhnkfcvnb.apps.googleusercontent.com',
    iosBundleId: 'com.jukusoft.tsconnect',
  );
}