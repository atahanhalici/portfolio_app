import 'package:get_it/get_it.dart';
import 'package:portfolio_app/repository/repository.dart';
import 'package:portfolio_app/services/apiservices.dart';
import 'package:portfolio_app/services/dbservices.dart';

final locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(() => Repository());
  locator.registerLazySingleton(() => DbServices());
  locator.registerLazySingleton(() => ApiServices());
}
