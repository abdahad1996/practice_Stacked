import 'package:Practice_Stacked/App/locator.dart';
import 'package:Practice_Stacked/model/post.dart';
import 'package:Practice_Stacked/services/postService.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';

@singleton
class PostsViewModel extends FutureViewModel<List<Post>> {
  final _postsService = locator<PostsService>();

  @override
   
  Future< List<Post> > futureToRun() {
    print('Fetch posts');
    return _postsService.getPostsForUser(3);
  }
}
class PosViewModel extends BaseViewModel{
  final _postsService = locator<PostsService>();

 
   
  Future< List<Post> > getPost() {
    print('Fetch posts');
    return _postsService.getPostsForUser(3);
  }
}

abstract class Failure{}
class ServerError implements Failure{}
class ParsingError implements Failure{}
 