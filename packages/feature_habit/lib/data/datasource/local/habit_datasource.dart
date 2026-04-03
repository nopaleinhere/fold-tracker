import 'package:feature_habit/data/models/habit_model.dart';

abstract class HabitDatasource {
  Future<List<HabitModel>> getHabits();
}

class HabitDatasourceImpl implements HabitDatasource {
  @override
  Future<List<HabitModel>> getHabits() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return const [
      HabitModel(
        id: "1",
        title: "Learn Every Day",
        description: "Improve your skill",
        isFavorite: true,
        isCompleted: false,
      ),
      HabitModel(
        id: "2",
        title: "Reading",
        description: "Read 10 pages",
        isFavorite: false,
        isCompleted: true,
      ),
      HabitModel(
        id: "3",
        title: "Learn Japanese",
        description: "Study vocabulary",
        isFavorite: false,
        isCompleted: false,
      ),
    ];
  }
}
