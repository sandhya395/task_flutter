import 'dart:convert';

PastData pastDataFromJson(String str) => PastData.fromJson(json.decode(str));

String pastDataToJson(PastData data) => json.encode(data.toJson());

class PastData {
  String? name;
  String? job;
  String? id;
  DateTime? createdAt;

  PastData({
    this.name,
    this.job,
    this.id,
    this.createdAt,
  });

  PastData copyWith({
    String? name,
    String? job,
    String? id,
    DateTime? createdAt,
  }) =>
      PastData(
        name: name ?? this.name,
        job: job ?? this.job,
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
      );

  factory PastData.fromJson(Map<String, dynamic> json) => PastData(
    name: json["name"]?? "",
    job: json["job"]?? "",
    id: json["id"]?? "",
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "job": job,
    "id": id,
    "createdAt": createdAt?.toIso8601String(),
  };
}
