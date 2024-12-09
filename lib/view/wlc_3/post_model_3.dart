import 'dart:convert';

PastData pastDataFromJson(String str) => PastData.fromJson(json.decode(str));

String pastDataToJson(PastData data) => json.encode(data.toJson());

class PastData {
  int? id;

  PastData({
    this.id,
  });

  PastData copyWith({
    int? id,
  }) =>
      PastData(
        id: id ?? this.id,
      );

  factory PastData.fromJson(Map<String, dynamic> json) => PastData(
    id: json["id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}
