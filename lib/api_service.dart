import 'package:consume_json_placeholder/user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

@RestApi(baseUrl: "https://portal.airsmat.com")
abstract class ApiService{
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/api/smatauth/users")
  Future<List<Users>> getUsers();
}

