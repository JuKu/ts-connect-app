

class ServerSettings {
  static Map<String, String> servers = const {
    "https://ts-connect.jukusoft.com": "Main",
    "http://127.0.0.1:3000": "Testing"
  };

  static String defaultServer = servers.entries.first.key;

  static String getServerUrl() {
    return "";
  }

}