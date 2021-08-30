import 'package:food_reservation/app/app.locator.dart';
import 'package:food_reservation/shared/apis/post-api.dart';
import 'package:food_reservation/shared/models/post-model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PostService {
  final _postApi = locator<PostApi>();

  List<Post> _posts = [];

  List<Post> get posts => _posts;

  bool get hasPosts => _posts != null && _posts.isNotEmpty;

  Future<List<Post>> getPosts() async {
    _posts = await _postApi.getPosts();
    return _posts;
  }
}
