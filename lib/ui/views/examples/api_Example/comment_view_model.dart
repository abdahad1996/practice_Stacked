// comments_viewmodel.dart
import 'package:Practice_Stacked/App/locator.dart';
import 'package:Practice_Stacked/model/comment.dart';
import 'package:Practice_Stacked/services/api.dart';
import 'package:stacked/stacked.dart';

//Group together features using Services and Single Responsibility
class CommentsViewModel extends FutureViewModel<List<Comment>> {
  final int postId;
  CommentsViewModel(this.postId);

  @override
  Future<List<Comment>> futureToRun() =>
      locator<Api>().getCommentsForPost(postId);
}