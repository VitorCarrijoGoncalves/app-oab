import 'package:retrofit/http.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part "login_user_model.g.dart";

@JsonSerializable()
class LoginUserModel {
  String userName;
  String password;

  LoginUserModel({
    required this.userName,
    required this.password,
  });

  /* @override
  public String toString() {
    return "LoginUserModel [userId=" + userId + ", password=" + password + "]";
  } */

  factory LoginUserModel.fromJson(Map<String, dynamic> json) =>
      _$LoginUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginUserModelToJson(this);
}
