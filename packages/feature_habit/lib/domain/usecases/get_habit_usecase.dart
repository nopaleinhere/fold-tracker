import 'package:feature_habit/data/repository/habit_repository.dart';
import 'package:feature_habit/domain/entities/habit_entitiy.dart';

class GetHabitsUseCase {
  final HabitRepository repository;

  GetHabitsUseCase(this.repository);

  Future<List<HabitEntity>> call() {
    return repository.getHabits();
  }
}
