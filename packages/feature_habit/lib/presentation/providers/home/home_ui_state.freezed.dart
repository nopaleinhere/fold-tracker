// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeUiState {

 int get selectedTab; BaseState<List<HabitEntity>> get dataState;
/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeUiStateCopyWith<HomeUiState> get copyWith => _$HomeUiStateCopyWithImpl<HomeUiState>(this as HomeUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeUiState&&(identical(other.selectedTab, selectedTab) || other.selectedTab == selectedTab)&&(identical(other.dataState, dataState) || other.dataState == dataState));
}


@override
int get hashCode => Object.hash(runtimeType,selectedTab,dataState);

@override
String toString() {
  return 'HomeUiState(selectedTab: $selectedTab, dataState: $dataState)';
}


}

/// @nodoc
abstract mixin class $HomeUiStateCopyWith<$Res>  {
  factory $HomeUiStateCopyWith(HomeUiState value, $Res Function(HomeUiState) _then) = _$HomeUiStateCopyWithImpl;
@useResult
$Res call({
 int selectedTab, BaseState<List<HabitEntity>> dataState
});


$BaseStateCopyWith<List<HabitEntity>, $Res> get dataState;

}
/// @nodoc
class _$HomeUiStateCopyWithImpl<$Res>
    implements $HomeUiStateCopyWith<$Res> {
  _$HomeUiStateCopyWithImpl(this._self, this._then);

  final HomeUiState _self;
  final $Res Function(HomeUiState) _then;

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedTab = null,Object? dataState = null,}) {
  return _then(_self.copyWith(
selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as int,dataState: null == dataState ? _self.dataState : dataState // ignore: cast_nullable_to_non_nullable
as BaseState<List<HabitEntity>>,
  ));
}
/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStateCopyWith<List<HabitEntity>, $Res> get dataState {
  
  return $BaseStateCopyWith<List<HabitEntity>, $Res>(_self.dataState, (value) {
    return _then(_self.copyWith(dataState: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeUiState].
extension HomeUiStatePatterns on HomeUiState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeUiState value)  $default,){
final _that = this;
switch (_that) {
case _HomeUiState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeUiState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int selectedTab,  BaseState<List<HabitEntity>> dataState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that.selectedTab,_that.dataState);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int selectedTab,  BaseState<List<HabitEntity>> dataState)  $default,) {final _that = this;
switch (_that) {
case _HomeUiState():
return $default(_that.selectedTab,_that.dataState);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int selectedTab,  BaseState<List<HabitEntity>> dataState)?  $default,) {final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that.selectedTab,_that.dataState);case _:
  return null;

}
}

}

/// @nodoc


class _HomeUiState implements HomeUiState {
  const _HomeUiState({this.selectedTab = 0, required this.dataState});
  

@override@JsonKey() final  int selectedTab;
@override final  BaseState<List<HabitEntity>> dataState;

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeUiStateCopyWith<_HomeUiState> get copyWith => __$HomeUiStateCopyWithImpl<_HomeUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeUiState&&(identical(other.selectedTab, selectedTab) || other.selectedTab == selectedTab)&&(identical(other.dataState, dataState) || other.dataState == dataState));
}


@override
int get hashCode => Object.hash(runtimeType,selectedTab,dataState);

@override
String toString() {
  return 'HomeUiState(selectedTab: $selectedTab, dataState: $dataState)';
}


}

/// @nodoc
abstract mixin class _$HomeUiStateCopyWith<$Res> implements $HomeUiStateCopyWith<$Res> {
  factory _$HomeUiStateCopyWith(_HomeUiState value, $Res Function(_HomeUiState) _then) = __$HomeUiStateCopyWithImpl;
@override @useResult
$Res call({
 int selectedTab, BaseState<List<HabitEntity>> dataState
});


@override $BaseStateCopyWith<List<HabitEntity>, $Res> get dataState;

}
/// @nodoc
class __$HomeUiStateCopyWithImpl<$Res>
    implements _$HomeUiStateCopyWith<$Res> {
  __$HomeUiStateCopyWithImpl(this._self, this._then);

  final _HomeUiState _self;
  final $Res Function(_HomeUiState) _then;

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedTab = null,Object? dataState = null,}) {
  return _then(_HomeUiState(
selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as int,dataState: null == dataState ? _self.dataState : dataState // ignore: cast_nullable_to_non_nullable
as BaseState<List<HabitEntity>>,
  ));
}

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStateCopyWith<List<HabitEntity>, $Res> get dataState {
  
  return $BaseStateCopyWith<List<HabitEntity>, $Res>(_self.dataState, (value) {
    return _then(_self.copyWith(dataState: value));
  });
}
}

// dart format on
