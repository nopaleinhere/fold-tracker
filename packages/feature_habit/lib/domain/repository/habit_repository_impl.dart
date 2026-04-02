import 'package:feature_habit/data/datasource/local/habit_datasource.dart';
import 'package:feature_habit/data/mapper/habit_mapper.dart';
import 'package:feature_habit/data/repository/habit_repository.dart';
import 'package:feature_habit/domain/entities/habit_entitiy.dart';

class HabitRepositoryImpl implements HabitRepository {
  final HabitDatasource localDataSource;

  HabitRepositoryImpl(this.localDataSource);

  @override
  Future<List<HabitEntity>> getHabits() async {
    final result = await localDataSource.getHabits();

    return result.toEntity();
  }
}
