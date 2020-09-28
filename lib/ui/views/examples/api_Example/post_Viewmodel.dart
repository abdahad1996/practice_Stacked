// posts_viewmodel.dart
import 'package:Practice_Stacked/App/locator.dart';
import 'package:Practice_Stacked/model/post.dart';
// import 'package:Practice_Stacked/services/api.dart';
import 'package:Practice_Stacked/services/postService.dart';
import 'package:stacked/stacked.dart';


// posts_viewmodel.dart
class PostsViewModel extends FutureViewModel<List<Post>> {
  final _postsService = locator<PostsService>();

  @override
  Future<List<Post>> futureToRun() => _postsService.getPostsForUser(3);
}

// posts_count_viewmodel.dart
class PostsCountViewModel extends BaseViewModel {
  int get postsCount => locator<PostsService>().posts.length;
}