// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_relate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskRelate _$TaskRelateFromJson(Map<String, dynamic> json) {
  return _TaskRelate.fromJson(json);
}

/// @nodoc
class _$TaskRelateTearOff {
  const _$TaskRelateTearOff();

  _TaskRelate call({int? counter, List<String>? profileItems = const []}) {
    return _TaskRelate(
      counter: counter,
      profileItems: profileItems,
    );
  }

  TaskRelate fromJson(Map<String, Object> json) {
    return TaskRelate.fromJson(json);
  }
}

/// @nodoc
const $TaskRelate = _$TaskRelateTearOff();

/// @nodoc
mixin _$TaskRelate {
  int? get counter => throw _privateConstructorUsedError;
  List<String>? get profileItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskRelateCopyWith<TaskRelate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskRelateCopyWith<$Res> {
  factory $TaskRelateCopyWith(
          TaskRelate value, $Res Function(TaskRelate) then) =
      _$TaskRelateCopyWithImpl<$Res>;
  $Res call({int? counter, List<String>? profileItems});
}

/// @nodoc
class _$TaskRelateCopyWithImpl<$Res> implements $TaskRelateCopyWith<$Res> {
  _$TaskRelateCopyWithImpl(this._value, this._then);

  final TaskRelate _value;
  // ignore: unused_field
  final $Res Function(TaskRelate) _then;

  @override
  $Res call({
    Object? counter = freezed,
    Object? profileItems = freezed,
  }) {
    return _then(_value.copyWith(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int?,
      profileItems: profileItems == freezed
          ? _value.profileItems
          : profileItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$TaskRelateCopyWith<$Res> implements $TaskRelateCopyWith<$Res> {
  factory _$TaskRelateCopyWith(
          _TaskRelate value, $Res Function(_TaskRelate) then) =
      __$TaskRelateCopyWithImpl<$Res>;
  @override
  $Res call({int? counter, List<String>? profileItems});
}

/// @nodoc
class __$TaskRelateCopyWithImpl<$Res> extends _$TaskRelateCopyWithImpl<$Res>
    implements _$TaskRelateCopyWith<$Res> {
  __$TaskRelateCopyWithImpl(
      _TaskRelate _value, $Res Function(_TaskRelate) _then)
      : super(_value, (v) => _then(v as _TaskRelate));

  @override
  _TaskRelate get _value => super._value as _TaskRelate;

  @override
  $Res call({
    Object? counter = freezed,
    Object? profileItems = freezed,
  }) {
    return _then(_TaskRelate(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int?,
      profileItems: profileItems == freezed
          ? _value.profileItems
          : profileItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskRelate with DiagnosticableTreeMixin implements _TaskRelate {
  _$_TaskRelate({this.counter, this.profileItems = const []});

  factory _$_TaskRelate.fromJson(Map<String, dynamic> json) =>
      _$$_TaskRelateFromJson(json);

  @override
  final int? counter;
  @JsonKey(defaultValue: const [])
  @override
  final List<String>? profileItems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskRelate(counter: $counter, profileItems: $profileItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskRelate'))
      ..add(DiagnosticsProperty('counter', counter))
      ..add(DiagnosticsProperty('profileItems', profileItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskRelate &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality()
                    .equals(other.counter, counter)) &&
            (identical(other.profileItems, profileItems) ||
                const DeepCollectionEquality()
                    .equals(other.profileItems, profileItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(counter) ^
      const DeepCollectionEquality().hash(profileItems);

  @JsonKey(ignore: true)
  @override
  _$TaskRelateCopyWith<_TaskRelate> get copyWith =>
      __$TaskRelateCopyWithImpl<_TaskRelate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskRelateToJson(this);
  }
}

abstract class _TaskRelate implements TaskRelate {
  factory _TaskRelate({int? counter, List<String>? profileItems}) =
      _$_TaskRelate;

  factory _TaskRelate.fromJson(Map<String, dynamic> json) =
      _$_TaskRelate.fromJson;

  @override
  int? get counter => throw _privateConstructorUsedError;
  @override
  List<String>? get profileItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskRelateCopyWith<_TaskRelate> get copyWith =>
      throw _privateConstructorUsedError;
}
