import 'package:flutter/foundation.dart';
import 'package:http_provider/api_service.dart';
import 'package:http_provider/locator.dart';
import 'package:http_provider/user.dart';

class UserProvider extends ChangeNotifier {
  ApiService _api = locator<ApiService>();

  List<User> users = [];

  // List<User> get users => _users;

  Future<void> fetchUsers() async {
    List<dynamic> list = await _api.getUsers();

    for (Map map in list) {
      users.add(User.fromMap(map));
    }

    notifyListeners();
  }
}
