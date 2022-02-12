

import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class ServerSettings {
  static Map<String, String> servers = const {
    "https://ts-connect.jukusoft.de/": "Main",
    "http://127.0.0.1:3000/": "Testing"
  };

  static String defaultServer = servers.entries.first.key;

  static String getServerUrl() {
    return Settings.getValue("server-url", defaultServer);
  }

  static String getDataPrivacyUrl() {
    return getServerUrl() + "public/data-privacy.html";
  }

  static String getImprintUrl() {
    return getServerUrl() + "public/imprint.html";
  }

  static String getTermsOfServiceUrl() {
    return getServerUrl() + "public/terms-of-service.html";
  }

}