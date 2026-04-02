import 'package:feature_habit/domain/entities/habit_entitiy.dart';

abstract class HabitRepository {
  Future<List<HabitEntity>> getHabits();
}
