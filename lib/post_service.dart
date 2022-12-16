import 'dart:convert';
import 'dart:developer';

import 'package:fbloc/post_model.dart';
import 'package:http/http.dart' as htt;

class PostService {
  final baseUrl = 'jsonplaceholder.typicode.com';

  getPosts() async {
    try {
      final uri = Uri.https(baseUrl, '/posts');
      final response = await htt.get(uri);
      final json = jsonDecode(response.body) as List;
      final posts = json.map((e) => PostModel.fromJson(e)).toList();

      return posts;
    } catch (e) {
      throw e;
    }
  }
}
