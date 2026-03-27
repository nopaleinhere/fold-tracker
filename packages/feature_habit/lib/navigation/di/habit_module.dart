import 'package:core/navigation/app_route.dart';
import 'package:feature_habit/navigation/habit_route.dart';
import 'package:get_it/get_it.dart';

void registerHabitDependencies(GetIt sl) {
  sl.registerLazySingleton<AppRoute>(() => HabitRoute());
}
