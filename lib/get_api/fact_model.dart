import 'dart:convert';

List<GetData> getDataFromJson(String str) => List<GetData>.from(json.decode(str).map((x) => GetData.fromJson(x)));

String getDataToJson(List<GetData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetData {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  GetData({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  GetData copyWith({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    Rating? rating,
  }) =>
      GetData(
        id: id ?? this.id,
        title: title ?? this.title,
        price: price ?? this.price,
        description: description ?? this.description,
        category: category ?? this.category,
        image: image ?? this.image,
        rating: rating ?? this.rating,
      );

  factory GetData.fromJson(Map<String, dynamic> json) => GetData(
    id: json["id"] ?? 0,
    title: json["title"] ?? "",
    price: json["price"]?.toDouble() ?? 0,
    description: json["description"] ?? "",
    category: json["category"] ?? "",
    image: json["image"] ?? "",
    rating: json["rating"] == null ? null : Rating.fromJson(json["rating"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "description": description,
    "category": category,
    "image": image,
    "rating": rating?.toJson(),
  };
}

class Rating {
  double? rate;
  int? count;

  Rating({
    this.rate,
    this.count,
  });

  Rating copyWith({
    double? rate,
    int? count,
  }) =>
      Rating(
        rate: rate ?? this.rate,
        count: count ?? this.count,
      );

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    rate: json["rate"]?.toDouble(),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "rate": rate,
    "count": count,
  };
}


// class GetData {
//   int? postId;
//   int? id;
//   String? name;
//   String? email;
//   String? body;
//
//   GetData({
//     this.postId,
//     this.id,
//     this.name,
//     this.email,
//     this.body,
//   });
//
//   GetData copyWith({
//     int? postId,
//     int? id,
//     String? name,
//     String? email,
//     String? body,
//   }) =>
//       GetData(
//         postId: postId ?? this.postId,
//         id: id ?? this.id,
//         name: name ?? this.name,
//         email: email ?? this.email,
//         body: body ?? this.body,
//       );
//
//   factory GetData.fromJson(Map<String, dynamic> json) => GetData(
//     postId: json["postId"] ?? 0,
//     id: json["id"] ?? 0,
//     name: json["name"] ?? "",
//     email: json["email"] ?? "",
//     body: json["body"] ?? "",
//   );
//
//   Map<String, dynamic> toJson() => {
//     "postId": postId,
//     "id": id,
//     "name": name,
//     "email": email,
//     "body": body,
//   };
// }