import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.freezed.dart';

@freezed
class BaseState<T> with _$BaseState<T> {
  const factory BaseState.initial() = Initial<T>;

  const factory BaseState.loading() = Loading<T>;

  const factory BaseState.success(T data) = Success<T>;

  const factory BaseState.empty() = Empty<T>;

  const factory BaseState.error(String message) = Error<T>;
}
