// import 'package:Practice_Stacked/App/Router.gr.dart';
import 'package:Practice_Stacked/App/Router.gr.dart';
import 'package:Practice_Stacked/App/locator.dart';
import 'package:Practice_Stacked/System/Database.dart';
import 'package:Practice_Stacked/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _sharedPreferences = locator<SharedPreferencesService>();
  final _navigationService = locator<NavigationService>();
  final _database = locator<Database>();

  Future initialise() async {
    var hasUser = _sharedPreferences.hasUser;
    if (hasUser) {
      var currentAddress = await _database.getCurrentAddress();
      if (currentAddress == null) {
        // has permissions
        // if they don't we request permissions before navigating
        await _navigationService.replaceWith(Routes.addressSelectionView);
      } else {
        await _navigationService.replaceWith(Routes.homeView);
      }
    }
  }
}