// To parse this JSON data, do
//
//     final img = imgFromJson(jsonString);

import 'dart:convert';

List<Img> imgFromJson(String str) => List<Img>.from(json.decode(str).map((x) => Img.fromJson(x)));

String imgToJson(List<Img> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Img {
  Img({
    this.albumId,
    this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  factory Img.fromJson(Map<String, dynamic> json) => Img(
    albumId: json["albumId"],
    id: json["id"],
    title: json["title"],
    url: json["url"],
    thumbnailUrl: json["thumbnailUrl"],
  );

  Map<String, dynamic> toJson() => {
    "albumId": albumId,
    "id": id,
    "title": title,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
  };
}
