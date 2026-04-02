import 'package:core/base/base_notifier.dart';
import 'package:core/base/base_state.dart';
import 'package:feature_habit/domain/entities/habit_entitiy.dart';
import 'package:feature_habit/domain/usecases/get_habit_usecase.dart';
import 'package:feature_habit/presentation/providers/home/home_ui_state.dart';

class HomeNotifier extends BaseUiNotifier<HomeUiState, List<HabitEntity>> {
  final GetHabitsUseCase _getHabitsUseCase;
  HomeNotifier(this._getHabitsUseCase);

  @override
  HomeUiState build() {
    Future.microtask(() => loadHabits());
    return const HomeUiState(dataState: BaseState.initial());
  }

  void changeTab(int index) {
    state = state.copyWith(selectedTab: index);
  }

  Future<void> loadHabits() async {
    await safeCall(
      () => _getHabitsUseCase(),
      isEmpty: (data) => data.isEmpty,
      onStateChange: (newDataState) => state.copyWith(dataState: newDataState),
    );
  }

  Future<void> refresh() async => await loadHabits();
}
