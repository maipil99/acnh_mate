import 'package:http/http.dart' as http;

class api{

  static Future<http.Response> fetch(String type) {
    return http.get(Uri.parse('http://185.51.76.159:8092/api/'+type));
  }

}