class Image {
  String title ;
  String url;

  Image({
    required this.title,
    required this.url
  });

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(
      title: json['title'] as String,
      url: json['url'] as String
    );
  }

}