import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String url = 'https://jsonplaceholder.typicode.com/users';

  Future<List<dynamic>> getUsers() async {
    var response = await http.Client().get(url);

    List<dynamic> data = json.decode(response.body) as List<dynamic>;

    return data;
  }
}
