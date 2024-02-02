import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  final String name;
  final String accessToken;
  final String role;
  final String username;
  final bool status;

  User({
    required this.name,
    required this.accessToken,
    required this.role,
    required this.username,
    required this.status,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        accessToken: json["accessToken"],
        role: json["role"],
        username: json["username"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "accessToken": accessToken,
        "role": role,
        "username": username,
        "status": status,
      };
}
