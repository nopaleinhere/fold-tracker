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
        isCompleted: false,
      ),
      HabitModel(
        id: "2",
        title: "Reading",
        description: "Read 10 pages",
        isCompleted: true,
      ),
      HabitModel(
        id: "3",
        title: "Learn Japanese",
        description: "Study vocabulary",
        isCompleted: false,
      ),
    ];
  }
}
