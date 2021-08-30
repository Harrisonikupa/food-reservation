import 'package:food_reservation/app/app.locator.dart';
import 'package:food_reservation/shared/apis/post-api.dart';
import 'package:food_reservation/shared/models/post-model.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends FutureViewModel<List<Post>> {
  final _postApi = locator<PostApi>();
  @override
  Future<List<Post>> futureToRun() => _postApi.getPosts();

  @override
  void onError(error) {
    // Show dialog here using service if we want to
  }
}
