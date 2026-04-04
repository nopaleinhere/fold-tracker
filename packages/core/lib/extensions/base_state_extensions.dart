import 'package:core/base/base_state.dart';

extension BaseStateExtensions<T> on BaseState<T> {
  bool get isLoading => this is Loading<T>;

  bool get isSuccess => this is Success<T>;

  bool get isError => this is Error<T>;

  bool get isEmpty => this is Empty<T>;

  T? get data => whenOrNull(success: (data) => data);
}
