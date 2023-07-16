import 'package:consume_json_placeholder/user_repo.dart';
import 'package:consume_json_placeholder/users_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';

import 'api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio();
    final apiService = ApiService(dio);
    final usersRepository = UsersRepository(apiService: apiService);

    return MultiProvider(
      providers: [
        Provider.value(value: usersRepository),
      ],
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: UsersScreen(),
      ),
    );
  }
}
