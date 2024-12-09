import 'dart:convert';

List<Welcome> pastDataFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String pastDataToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  int id;
  String title;
  double price;
  String description;
  Category category;
  String image;
  Rating rating;

  Welcome({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  static fromJson(x) {}

  toJson() {}

}

enum Category {
  ELECTRONICS,
  JEWELERY,
  MEN_S_CLOTHING,
  WOMEN_S_CLOTHING
}

class Rating {
  double rate;
  int count;

  Rating({
    required this.rate,
    required this.count,
  });

}