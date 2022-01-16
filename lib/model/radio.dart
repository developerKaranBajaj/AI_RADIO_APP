import 'dart:convert';

import 'package:flutter/foundation.dart';

class MyRadioList {

  final List<MyRadio> radios;
  MyRadioList({
    required this.radios,
  });

  MyRadioList copyWith({
    List<MyRadio>? radios,
  }) {
    return MyRadioList(
      radios: radios ?? this.radios,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'radios': radios.map((x) => x.toMap()).toList(),
    };
  }

  factory MyRadioList.fromMap(Map<String, dynamic> map) {
    return MyRadioList(
      radios: List<MyRadio>.from(map['radios']?.map((x) => MyRadio.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadioList.fromJson(String source) => MyRadioList.fromMap(json.decode(source));

  @override
  String toString() => 'MyRadioList(radios: $radios)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MyRadioList &&
      listEquals(other.radios, radios);
  }

  @override
  int get hashCode => radios.hashCode;
}

class MyRadio {
  final int id;
  final int order;
  final String name;
  final String desc;
  final String tagline;
  final String color;
  final String url;
  final String icon;
  final String category;
  final String image;
  final String lang;

  MyRadio({
    required this.id,
    required this.order,
    required this.name,
    required this.desc,
    required this.tagline,
    required this.color,
    required this.url,
    required this.icon,
    required this.category,
    required this.image,
    required this.lang,
  });

  MyRadio copyWith({
    int? id,
    int? order,
    String? name,
    String? desc,
    String? tagline,
    String? color,
    String? url,
    String? icon,
    String? category,
    String? image,
    String? lang,
  }) {
    return MyRadio(
      id: id ?? this.id,
      order: order ?? this.order,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      tagline: tagline ?? this.tagline,
      color: color ?? this.color,
      url: url ?? this.url,
      icon: icon ?? this.icon,
      category: category ?? this.category,
      image: image ?? this.image,
      lang: lang ?? this.lang,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'order': order,
      'name': name,
      'desc': desc,
      'tagline': tagline,
      'color': color,
      'url': url,
      'icon': icon,
      'category': category,
      'image': image,
      'lang': lang,
    };
  }

  factory MyRadio.fromMap(Map<String, dynamic> map) {
    return MyRadio(
      id: map['id']?.toInt() ?? 0,
      order: map['order']?.toInt() ?? 0,
      name: map['name'] ?? '',
      desc: map['desc'] ?? '',
      tagline: map['tagline'] ?? '',
      color: map['color'] ?? '',
      url: map['url'] ?? '',
      icon: map['icon'] ?? '',
      category: map['category'] ?? '',
      image: map['image'] ?? '',
      lang: map['lang'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadio.fromJson(String source) =>
      MyRadio.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyRadio(id: $id, order: $order, name: $name, desc: $desc, tagline: $tagline, color: $color, url: $url, icon: $icon, category: $category, image: $image, lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyRadio &&
        other.id == id &&
        other.order == order &&
        other.name == name &&
        other.desc == desc &&
        other.tagline == tagline &&
        other.color == color &&
        other.url == url &&
        other.icon == icon &&
        other.category == category &&
        other.image == image &&
        other.lang == lang;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        order.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        tagline.hashCode ^
        color.hashCode ^
        url.hashCode ^
        icon.hashCode ^
        category.hashCode ^
        image.hashCode ^
        lang.hashCode;
  }
}
