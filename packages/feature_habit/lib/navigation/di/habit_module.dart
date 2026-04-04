import 'package:core/di/service_locator.dart';
import 'package:core/navigation/app_route.dart';
import 'package:feature_habit/data/datasource/local/habit_datasource.dart';
import 'package:feature_habit/data/repository/habit_repository.dart';
import 'package:feature_habit/domain/repository/habit_repository_impl.dart';
import 'package:feature_habit/domain/usecases/get_habit_usecase.dart';
import 'package:feature_habit/navigation/habit_route.dart';
import 'package:feature_habit/presentation/providers/home/home_notifier.dart';

void registerHabitDependencies() {
  sl.registerLazySingleton<AppRoute>(() => HabitRoute());
  sl.registerLazySingleton<HabitDatasource>(() => HabitDatasourceImpl());
  sl.registerLazySingleton<HabitRepository>(() => HabitRepositoryImpl(sl()));
  sl.registerLazySingleton(() => GetHabitsUseCase(sl()));
  sl.registerFactory(() => HomeNotifier(sl()));
}
