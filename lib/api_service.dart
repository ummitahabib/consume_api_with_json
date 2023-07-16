import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'todo_model.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/todos")
  Future<List<Todo>> getTodos();
}
