import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:very_good_template/core/helpers/shared_preferences_helpers.dart';

/// get the Instance of Dependency Injection GetIT
GetIt locator = GetIt.instance;

/// Register all Services to be used in app
void setupLocator() {
  locator
    ..registerLazySingleton(NavigationService.new)
    ..registerLazySingleton(DialogService.new)
    ..registerLazySingleton(SnackbarService.new)
    ..registerLazySingleton(BottomSheetService.new)
    ..registerLazySingleton(SharedPreferencesHelpers.new);
}
