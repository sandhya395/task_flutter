import 'dart:convert';

List<PastData> pastDataFromJson(String str) => List<PastData>.from(json.decode(str).map((x) => PastData.fromJson(x)));

String pastDataToJson(List<PastData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PastData {
  int? userId;
  int? id;
  String? title;

  PastData({
    this.userId,
    this.id,
    this.title,
  });

  PastData copyWith({
    int? userId,
    int? id,
    String? title,
  }) =>
      PastData(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
      );

  factory PastData.fromJson(Map<String, dynamic> json) => PastData(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
  };
}
