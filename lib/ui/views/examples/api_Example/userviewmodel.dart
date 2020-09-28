// user_viewmodel.dart
import 'package:Practice_Stacked/App/locator.dart';
import 'package:Practice_Stacked/model/user.dart';
import 'package:Practice_Stacked/services/api.dart';
import 'package:stacked/stacked.dart';

class UserViewModel extends FutureViewModel<User> {
  final int userId;
  UserViewModel(this.userId);

  @override
  Future<User> futureToRun() => locator<Api>().getUserProfile(userId);
}