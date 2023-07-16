import 'package:consume_json_placeholder/user.dart';
import 'package:flutter/foundation.dart';

import 'api_service.dart';

class UsersRepository {
  final ApiService apiService;

  UsersRepository({required this.apiService});

  Future<List<Users>> getUsers() async {
    try {
      return await apiService.getUsers();
    } catch (e) {
      debugPrint("Error fetching user: $e");
      return [];
    }
  }
}
