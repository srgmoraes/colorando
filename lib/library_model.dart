import 'image_model.dart';

class Library {
  String title ;
  String subtitle;
  String icon;
  List<Image> images;

  Library({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.images,
  });

  factory Library.fromJson(Map<String, dynamic> json) {
    return Library(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      icon: json['icon'] as String,
      images: (json['images'] as List).map((i) => Image.fromJson(i)).toList(),
    );

  }
}