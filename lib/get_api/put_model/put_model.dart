import 'dart:convert';

PastData pastDataFromJson(String str) => PastData.fromJson(json.decode(str));

String pastDataToJson(PastData data) => json.encode(data.toJson());

class PastData {
  DateTime? updatedAt;

  PastData({
    this.updatedAt,
  });

  PastData copyWith({
    DateTime? updatedAt,
  }) =>
      PastData(
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory PastData.fromJson(Map<String, dynamic> json) => PastData(
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "updatedAt": updatedAt?.toIso8601String(),
  };
}