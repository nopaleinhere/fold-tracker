import 'package:core/base/base_state.dart';
import 'package:feature_habit/domain/entities/habit_entitiy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_ui_state.freezed.dart';

@freezed
abstract class HomeUiState with _$HomeUiState {
  const factory HomeUiState({
    @Default(0) int selectedTab,
    required BaseState<List<HabitEntity>> dataState,
  }) = _HomeUiState;
}
