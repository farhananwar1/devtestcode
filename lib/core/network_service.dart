import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkService {
  final baseUrlApi = "https://www.7timer.info";

  Future getData() async {
    final response = await http.get(
      Uri.parse('$baseUrlApi/bin/astro.php?lon=113.2&lat=23.1&ac=0&unit=metric&output=json&tzshift=0'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    print(response.body.toString());

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return [true, jsonDecode(response.body)];
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      return [false, jsonDecode(response.body)];
    }
  }
}
