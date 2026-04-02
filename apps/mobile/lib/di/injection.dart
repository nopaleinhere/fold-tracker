import 'package:core/di/service_locator.dart';
import 'package:feature_habit/navigation/di/habit_module.dart';

Future<void> initDI() async {
  initCoreDependencies();
  registerHabitDependencies();
}
