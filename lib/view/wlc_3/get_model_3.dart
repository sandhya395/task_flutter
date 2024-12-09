import 'dart:convert';

List<PastData> pastDataFromJson(String str) => List<PastData>.from(json.decode(str).map((x) => PastData.fromJson(x)));

String pastDataToJson(List<PastData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PastData {
  int? userId;
  int? id;
  String? title;
  String? body;

  PastData({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  PastData copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      PastData(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );

  factory PastData.fromJson(Map<String, dynamic> json) => PastData(
    userId: json["userId"]??0,
    id: json["id"]??0,
    title: json["title"]??"",
    body: json["body"]??"",
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
