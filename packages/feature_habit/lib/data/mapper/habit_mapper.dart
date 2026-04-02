import 'package:feature_habit/data/models/habit_model.dart';
import 'package:feature_habit/domain/entities/habit_entitiy.dart';

extension HabitMapper on HabitModel {
  HabitEntity toEntity() {
    return HabitEntity(
      id: id,
      title: title,
      description: description,
      isCompleted: isCompleted,
    );
  }
}

extension HabitListMapper on List<HabitModel> {
  List<HabitEntity> toEntity() {
    return map((e) => e.toEntity()).toList();
  }
}
