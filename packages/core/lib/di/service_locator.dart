import 'package:core/services/connectivity_service.dart';
import 'package:core/services/logger_service.dart';
import 'package:core/storage/hive_storage.dart';
import 'package:core/storage/secure_hive_storage.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initCoreDependencies() {
  sl.registerLazySingleton<HiveStorage>(() => HiveStorage());

  sl.registerLazySingleton<SecureHiveStorage>(() => SecureHiveStorage());

  sl.registerLazySingleton<LoggerService>(() => LoggerService());

  sl.registerLazySingleton<ConnectivityService>(() => ConnectivityService());
}
