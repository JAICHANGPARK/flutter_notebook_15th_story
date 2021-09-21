// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_to_do.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskTodo _$TaskTodoFromJson(Map<String, dynamic> json) {
  return _TaskTodo.fromJson(json);
}

/// @nodoc
class _$TaskTodoTearOff {
  const _$TaskTodoTearOff();

  _TaskTodo call(
      {required String priority,
      required String title,
      required String dueDatetime}) {
    return _TaskTodo(
      priority: priority,
      title: title,
      dueDatetime: dueDatetime,
    );
  }

  TaskTodo fromJson(Map<String, Object> json) {
    return TaskTodo.fromJson(json);
  }
}

/// @nodoc
const $TaskTodo = _$TaskTodoTearOff();

/// @nodoc
mixin _$TaskTodo {
  String get priority => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get dueDatetime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskTodoCopyWith<TaskTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskTodoCopyWith<$Res> {
  factory $TaskTodoCopyWith(TaskTodo value, $Res Function(TaskTodo) then) =
      _$TaskTodoCopyWithImpl<$Res>;
  $Res call({String priority, String title, String dueDatetime});
}

/// @nodoc
class _$TaskTodoCopyWithImpl<$Res> implements $TaskTodoCopyWith<$Res> {
  _$TaskTodoCopyWithImpl(this._value, this._then);

  final TaskTodo _value;
  // ignore: unused_field
  final $Res Function(TaskTodo) _then;

  @override
  $Res call({
    Object? priority = freezed,
    Object? title = freezed,
    Object? dueDatetime = freezed,
  }) {
    return _then(_value.copyWith(
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dueDatetime: dueDatetime == freezed
          ? _value.dueDatetime
          : dueDatetime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TaskTodoCopyWith<$Res> implements $TaskTodoCopyWith<$Res> {
  factory _$TaskTodoCopyWith(_TaskTodo value, $Res Function(_TaskTodo) then) =
      __$TaskTodoCopyWithImpl<$Res>;
  @override
  $Res call({String priority, String title, String dueDatetime});
}

/// @nodoc
class __$TaskTodoCopyWithImpl<$Res> extends _$TaskTodoCopyWithImpl<$Res>
    implements _$TaskTodoCopyWith<$Res> {
  __$TaskTodoCopyWithImpl(_TaskTodo _value, $Res Function(_TaskTodo) _then)
      : super(_value, (v) => _then(v as _TaskTodo));

  @override
  _TaskTodo get _value => super._value as _TaskTodo;

  @override
  $Res call({
    Object? priority = freezed,
    Object? title = freezed,
    Object? dueDatetime = freezed,
  }) {
    return _then(_TaskTodo(
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dueDatetime: dueDatetime == freezed
          ? _value.dueDatetime
          : dueDatetime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskTodo with DiagnosticableTreeMixin implements _TaskTodo {
  _$_TaskTodo(
      {required this.priority, required this.title, required this.dueDatetime});

  factory _$_TaskTodo.fromJson(Map<String, dynamic> json) =>
      _$$_TaskTodoFromJson(json);

  @override
  final String priority;
  @override
  final String title;
  @override
  final String dueDatetime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskTodo(priority: $priority, title: $title, dueDatetime: $dueDatetime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskTodo'))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('dueDatetime', dueDatetime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskTodo &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.dueDatetime, dueDatetime) ||
                const DeepCollectionEquality()
                    .equals(other.dueDatetime, dueDatetime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(dueDatetime);

  @JsonKey(ignore: true)
  @override
  _$TaskTodoCopyWith<_TaskTodo> get copyWith =>
      __$TaskTodoCopyWithImpl<_TaskTodo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskTodoToJson(this);
  }
}

abstract class _TaskTodo implements TaskTodo {
  factory _TaskTodo(
      {required String priority,
      required String title,
      required String dueDatetime}) = _$_TaskTodo;

  factory _TaskTodo.fromJson(Map<String, dynamic> json) = _$_TaskTodo.fromJson;

  @override
  String get priority => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get dueDatetime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskTodoCopyWith<_TaskTodo> get copyWith =>
      throw _privateConstructorUsedError;
}
