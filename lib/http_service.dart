import 'dart:convert';

import 'package:colorando3/library_model.dart';
import 'package:http/http.dart';

class HttpService {
  final String postsURL = "https://srgmoraes.github.io/pro_svg/library.json";

  Future<List<Library>> getLibrary() async {
    Response res = await get(postsURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      return body.map((dynamic item) => Library.fromJson(item),).toList();
    } else {
      throw "Unable to retrieve posts.";
    }

  }

}