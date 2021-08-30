import 'dart:convert';

import 'package:food_reservation/shared/constants/env.dart';
import 'package:food_reservation/shared/models/post-model.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@lazySingleton
class PostApi {
  var client = new http.Client();

  Future<List<Post>> getPosts() async {
    var posts = <Post>[];
    var response = await client
        .get('$BASE_URL/post', headers: <String, String>{'app-id': '$APP_ID'});
    print('here 2');
    var parsed = json.decode(response.body);
    for (var post in parsed['data']) {
      posts.add(Post.fromJson(post));
    }
    return posts;
  }

  Future createPost(Post data) async {
    var response = await client.post('$BASE_URL/post',
        headers: <String, String>{'app-id': '$APP_ID'}, body: data);
  }
}
