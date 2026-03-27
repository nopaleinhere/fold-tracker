import 'package:feature_habit/navigation/di/habit_module.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  registerHabitDependencies(sl);
}
