import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    final URL = Uri.parse(url);
    final response = await http.get(URL);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print('Failed to get weather data: ${response.statusCode}');
    }
  }
}

