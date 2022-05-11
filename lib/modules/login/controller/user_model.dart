import 'dart:convert';
import 'dart:core';

class UserModel {
  String username;
  String position;
  String location;

  UserModel(
      {required this.username, required this.location, required this.position});

  Map<String, dynamic> toMap() {
    return {
      'NOME': username,
      'CARGO': position,
      'UNIDADE': location,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      username: map['NOME'] ?? '',
      position: map['CARGO'] ?? '',
      location: map['UNIDADE'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
