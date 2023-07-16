import 'package:consume_json_placeholder/todo_list_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api_service.dart';
import 'todo_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dio = Dio();
    final apiService = ApiService(dio);
    final todoRepository = TodoRepository(apiService: apiService);

    return MultiProvider(
      providers: [
        Provider.value(value: todoRepository),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: TodoListScreen(),
      ),
    );
  }
}
