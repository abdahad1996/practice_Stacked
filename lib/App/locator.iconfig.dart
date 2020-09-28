// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:Practice_Stacked/services/api.dart';
import 'package:Practice_Stacked/services/CounterService.dart';
import 'package:Practice_Stacked/System/Database.dart';
import 'package:Practice_Stacked/services/third_party_services_module.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:Practice_Stacked/services/hive_Service.dart';
import 'package:Practice_Stacked/services/MediaService.dart';
import 'package:Practice_Stacked/services/permissions_service.dart';
import 'package:Practice_Stacked/services/postService.dart';
import 'package:Practice_Stacked/ui/views/examples/Posts/postsviewmodel.dart';
import 'package:Practice_Stacked/services/shared_preferences_service.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  g.registerLazySingleton<Api>(() => Api());
  g.registerLazySingleton<CounterService>(() => CounterService());
  g.registerLazySingleton<Database>(() => Database());
  g.registerLazySingleton<DialogService>(
      () => thirdPartyServicesModule.dialogService);
  g.registerLazySingleton<HiveService>(() => HiveService());
  g.registerLazySingleton<MediaService>(() => MediaService());
  g.registerLazySingleton<NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  g.registerLazySingleton<PermissionsService>(() => PermissionsService());
  g.registerLazySingleton<PostsService>(() => PostsService());
  g.registerLazySingleton<SharedPreferencesService>(
      () => SharedPreferencesService());
  g.registerLazySingleton<SnackbarService>(
      () => thirdPartyServicesModule.snackBarService);

  //Eager singletons must be registered in the right order
  g.registerSingleton<PostsViewModel>(PostsViewModel());
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
  @override
  SnackbarService get snackBarService => SnackbarService();
}
