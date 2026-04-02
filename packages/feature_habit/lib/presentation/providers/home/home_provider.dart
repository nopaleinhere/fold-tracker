import 'package:core/di/service_locator.dart';
import 'package:feature_habit/presentation/providers/home/home_notifier.dart';
import 'package:feature_habit/presentation/providers/home/home_ui_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeProvider = NotifierProvider<HomeNotifier, HomeUiState>(
  () => sl<HomeNotifier>(),
);
