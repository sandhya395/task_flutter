import 'dart:convert';

List<PastData> pastDataFromJson(String str) => List<PastData>.from(json.decode(str).map((x) => PastData.fromJson(x)));

String pastDataToJson(List<PastData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PastData {
  int? id;
  Brand? brand;
  String? name;
  String? price;
  dynamic priceSign;
  dynamic currency;
  String? imageLink;
  String? productLink;
  String? websiteLink;
  String? description;
  double? rating;
  String? category;
  String? productType;
  List<dynamic>? tagList;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? productApiUrl;
  String? apiFeaturedImage;
  List<ProductColor>? productColors;

  PastData({
    this.id,
    this.brand,
    this.name,
    this.price,
    this.priceSign,
    this.currency,
    this.imageLink,
    this.productLink,
    this.websiteLink,
    this.description,
    this.rating,
    this.category,
    this.productType,
    this.tagList,
    this.createdAt,
    this.updatedAt,
    this.productApiUrl,
    this.apiFeaturedImage,
    this.productColors,
  });

  PastData copyWith({
    int? id,
    Brand? brand,
    String? name,
    String? price,
    dynamic priceSign,
    dynamic currency,
    String? imageLink,
    String? productLink,
    String? websiteLink,
    String? description,
    double? rating,
    String? category,
    String? productType,
    List<dynamic>? tagList,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? productApiUrl,
    String? apiFeaturedImage,
    List<ProductColor>? productColors,
  }) =>
      PastData(
        id: id ?? this.id,
        brand: brand ?? this.brand,
        name: name ?? this.name,
        price: price ?? this.price,
        priceSign: priceSign ?? this.priceSign,
        currency: currency ?? this.currency,
        imageLink: imageLink ?? this.imageLink,
        productLink: productLink ?? this.productLink,
        websiteLink: websiteLink ?? this.websiteLink,
        description: description ?? this.description,
        rating: rating ?? this.rating,
        category: category ?? this.category,
        productType: productType ?? this.productType,
        tagList: tagList ?? this.tagList,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        productApiUrl: productApiUrl ?? this.productApiUrl,
        apiFeaturedImage: apiFeaturedImage ?? this.apiFeaturedImage,
        productColors: productColors ?? this.productColors,
      );

  factory PastData.fromJson(Map<String, dynamic> json) => PastData(
    id: json["id"],
    brand: brandValues.map[json["brand"]]!,
    name: json["name"],
    price: json["price"],
    priceSign: json["price_sign"],
    currency: json["currency"],
    imageLink: json["image_link"],
    productLink: json["product_link"],
    websiteLink: json["website_link"],
    description: json["description"],
    rating: json["rating"]?.toDouble(),
    category: json["category"],
    productType: json["product_type"],
    tagList: json["tag_list"] == null ? [] : List<dynamic>.from(json["tag_list"]!.map((x) => x)),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    productApiUrl: json["product_api_url"],
    apiFeaturedImage: json["api_featured_image"],
    productColors: json["product_colors"] == null ? [] : List<ProductColor>.from(json["product_colors"]!.map((x) => ProductColor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "brand": brandValues.reverse[brand],
    "name": name,
    "price": price,
    "price_sign": priceSign,
    "currency": currency,
    "image_link": imageLink,
    "product_link": productLink,
    "website_link": websiteLink,
    "description": description,
    "rating": rating,
    "category": category,
    "product_type": productType,
    "tag_list": tagList == null ? [] : List<dynamic>.from(tagList!.map((x) => x)),
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "product_api_url": productApiUrl,
    "api_featured_image": apiFeaturedImage,
    "product_colors": productColors == null ? [] : List<dynamic>.from(productColors!.map((x) => x.toJson())),
  };
}

enum Brand {
  MAYBELLINE
}

final brandValues = EnumValues({
  "maybelline": Brand.MAYBELLINE
});

class ProductColor {
  String? hexValue;
  String? colourName;

  ProductColor({
    this.hexValue,
    this.colourName,
  });

  ProductColor copyWith({
    String? hexValue,
    String? colourName,
  }) =>
      ProductColor(
        hexValue: hexValue ?? this.hexValue,
        colourName: colourName ?? this.colourName,
      );

  factory ProductColor.fromJson(Map<String, dynamic> json) => ProductColor(
    hexValue: json["hex_value"],
    colourName: json["colour_name"],
  );

  Map<String, dynamic> toJson() => {
    "hex_value": hexValue,
    "colour_name": colourName,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
