import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class first {

  factory first.fromJson(Map<String, dynamic> json) => _$firstFromJson(json);
  Map<String, dynamic> toJson(instance) => _$firstToJson(this);
  int id;
  String title;
  double price;

  //<editor-fold desc="Data Methods" defaultstate="collapsed">

  first({
    @required this.id,
    @required this.title,
    @required this.price,
    @required this.description,
    @required this.category,
    @required this.image,
  });

  first copyWith({
    int id,
    String title,
    double price,
    String description,
    String category,
    String image,
  }) {
    return new first(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      description: description ?? this.description,
      category: category ?? this.category,
      image: image ?? this.image,
    );
  }

  @override
  String toString() {
    return 'first{id: $id, title: $title, price: $price, description: $description, category: $category, image: $image}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is first &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          price == other.price &&
          description == other.description &&
          category == other.category &&
          image == other.image);

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      price.hashCode ^
      description.hashCode ^
      category.hashCode ^
      image.hashCode;

  //</editor-fold>

  String description;
  String category;
  String image;
}



