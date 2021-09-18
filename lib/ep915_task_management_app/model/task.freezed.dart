// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskTearOff {
  const _$TaskTearOff();

  _Task call(
      {String? title,
      String? dueDateTime,
      String? description,
      List<TaskTag?>? taskTags}) {
    return _Task(
      title: title,
      dueDateTime: dueDateTime,
      description: description,
      taskTags: taskTags,
    );
  }
}

/// @nodoc
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  String? get title => throw _privateConstructorUsedError;
  String? get dueDateTime => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<TaskTag?>? get taskTags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? dueDateTime,
      String? description,
      List<TaskTag?>? taskTags});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? dueDateTime = freezed,
    Object? description = freezed,
    Object? taskTags = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDateTime: dueDateTime == freezed
          ? _value.dueDateTime
          : dueDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taskTags: taskTags == freezed
          ? _value.taskTags
          : taskTags // ignore: cast_nullable_to_non_nullable
              as List<TaskTag?>?,
    ));
  }
}

/// @nodoc
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? dueDateTime,
      String? description,
      List<TaskTag?>? taskTags});
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object? title = freezed,
    Object? dueDateTime = freezed,
    Object? description = freezed,
    Object? taskTags = freezed,
  }) {
    return _then(_Task(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDateTime: dueDateTime == freezed
          ? _value.dueDateTime
          : dueDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taskTags: taskTags == freezed
          ? _value.taskTags
          : taskTags // ignore: cast_nullable_to_non_nullable
              as List<TaskTag?>?,
    ));
  }
}

/// @nodoc

class _$_Task with DiagnosticableTreeMixin implements _Task {
  _$_Task({this.title, this.dueDateTime, this.description, this.taskTags});

  @override
  final String? title;
  @override
  final String? dueDateTime;
  @override
  final String? description;
  @override
  final List<TaskTag?>? taskTags;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Task(title: $title, dueDateTime: $dueDateTime, description: $description, taskTags: $taskTags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Task'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('dueDateTime', dueDateTime))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('taskTags', taskTags));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Task &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.dueDateTime, dueDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dueDateTime, dueDateTime)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.taskTags, taskTags) ||
                const DeepCollectionEquality()
                    .equals(other.taskTags, taskTags)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(dueDateTime) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(taskTags);

  @JsonKey(ignore: true)
  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);
}

abstract class _Task implements Task {
  factory _Task(
      {String? title,
      String? dueDateTime,
      String? description,
      List<TaskTag?>? taskTags}) = _$_Task;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get dueDateTime => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  List<TaskTag?>? get taskTags => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskCopyWith<_Task> get copyWith => throw _privateConstructorUsedError;
}
