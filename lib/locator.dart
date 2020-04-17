import 'package:get_it/get_it.dart';
import 'package:http_provider/api_service.dart';
import 'package:http_provider/user_provider.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ApiService());

  locator.registerLazySingleton(() => UserProvider());
}
