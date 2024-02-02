import 'dart:convert';

Content contentFromJson(String str) => Content.fromJson(json.decode(str));

String contentToJson(Content data) => json.encode(data.toJson());

class Content {
  final int id;
  final String title;
  final String subtitle;
  final String desc;
  final String imageUrl;
  final String category;
  final bool status;
  final DateTime createdAt;
  final DateTime updatedAt;

  Content({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.desc,
    required this.imageUrl,
    required this.category,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        desc: json["desc"],
        imageUrl: json["image_url"],
        category: json["category"],
        status: json["status"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subtitle": subtitle,
        "desc": desc,
        "image_url": imageUrl,
        "category": category,
        "status": status,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
