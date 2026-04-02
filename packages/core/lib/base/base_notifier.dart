import 'package:core/base/base_state.dart';
import 'package:riverpod/riverpod.dart';

abstract class BaseUiNotifier<S, T> extends Notifier<S> {
  Future<void> safeCall(
    Future<T> Function() request, {
    bool Function(T data)? isEmpty,
    required S Function(BaseState<T> newDataState) onStateChange,
  }) async {
    try {
      state = onStateChange(const BaseState.loading());

      final result = await request();

      if (isEmpty != null && isEmpty(result)) {
        state = onStateChange(const BaseState.empty());
        return;
      }

      state = onStateChange(BaseState.success(result));
    } catch (e) {
      state = onStateChange(BaseState.error(e.toString()));
    }
  }
}
