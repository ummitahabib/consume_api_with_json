import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Users{
  String email;
  String? password;

  Users({
    required this.email,
    this.password,
});
  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}

