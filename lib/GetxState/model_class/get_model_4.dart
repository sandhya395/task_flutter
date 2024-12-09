import 'dart:convert';

PaastData pastDataFromJson(String str) => PaastData.fromJson(json.decode(str));

String pastDataToJson(PaastData data) => json.encode(data.toJson());

class PaastData {
  int? id;
  String? title;
  int? userId;

  PaastData({
    this.id,
    this.title,
    this.userId,
  });

  PaastData copyWith({
    int? id,
    String? title,
    int? userId,
  }) =>
      PaastData(
        id: id ?? this.id,
        title: title ?? this.title,
        userId: userId ?? this.userId,
      );

  factory PaastData.fromJson(Map<String, dynamic> json) => PaastData(
    id: json["id"] ?? 0,
    title: json["title"] ?? "",
    userId: json["userId"] ?? 0,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "userId": userId,
  };
}
