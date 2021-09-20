// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskTag _$TaskTagFromJson(Map<String, dynamic> json) {
  return _TaskTag.fromJson(json);
}

/// @nodoc
class _$TaskTagTearOff {
  const _$TaskTagTearOff();

  _TaskTag call(
      {@JsonKey(name: "tag")
          String? tag,
      @ColorSerialiser()
      @JsonKey()
          Color color = ColorSerialiser.defaultColor}) {
    return _TaskTag(
      tag: tag,
      color: color,
    );
  }

  TaskTag fromJson(Map<String, Object> json) {
    return TaskTag.fromJson(json);
  }
}

/// @nodoc
const $TaskTag = _$TaskTagTearOff();

/// @nodoc
mixin _$TaskTag {
  @JsonKey(name: "tag")
  String? get tag => throw _privateConstructorUsedError;
  @ColorSerialiser()
  @JsonKey()
  Color get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskTagCopyWith<TaskTag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskTagCopyWith<$Res> {
  factory $TaskTagCopyWith(TaskTag value, $Res Function(TaskTag) then) =
      _$TaskTagCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "tag") String? tag,
      @ColorSerialiser() @JsonKey() Color color});
}

/// @nodoc
class _$TaskTagCopyWithImpl<$Res> implements $TaskTagCopyWith<$Res> {
  _$TaskTagCopyWithImpl(this._value, this._then);

  final TaskTag _value;
  // ignore: unused_field
  final $Res Function(TaskTag) _then;

  @override
  $Res call({
    Object? tag = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$TaskTagCopyWith<$Res> implements $TaskTagCopyWith<$Res> {
  factory _$TaskTagCopyWith(_TaskTag value, $Res Function(_TaskTag) then) =
      __$TaskTagCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "tag") String? tag,
      @ColorSerialiser() @JsonKey() Color color});
}

/// @nodoc
class __$TaskTagCopyWithImpl<$Res> extends _$TaskTagCopyWithImpl<$Res>
    implements _$TaskTagCopyWith<$Res> {
  __$TaskTagCopyWithImpl(_TaskTag _value, $Res Function(_TaskTag) _then)
      : super(_value, (v) => _then(v as _TaskTag));

  @override
  _TaskTag get _value => super._value as _TaskTag;

  @override
  $Res call({
    Object? tag = freezed,
    Object? color = freezed,
  }) {
    return _then(_TaskTag(
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskTag with DiagnosticableTreeMixin implements _TaskTag {
  _$_TaskTag(
      {@JsonKey(name: "tag") this.tag,
      @ColorSerialiser() @JsonKey() this.color = ColorSerialiser.defaultColor});

  factory _$_TaskTag.fromJson(Map<String, dynamic> json) =>
      _$$_TaskTagFromJson(json);

  @override
  @JsonKey(name: "tag")
  final String? tag;
  @override
  @ColorSerialiser()
  @JsonKey()
  final Color color;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskTag(tag: $tag, color: $color)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskTag'))
      ..add(DiagnosticsProperty('tag', tag))
      ..add(DiagnosticsProperty('color', color));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskTag &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  _$TaskTagCopyWith<_TaskTag> get copyWith =>
      __$TaskTagCopyWithImpl<_TaskTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskTagToJson(this);
  }
}

abstract class _TaskTag implements TaskTag {
  factory _TaskTag(
      {@JsonKey(name: "tag") String? tag,
      @ColorSerialiser() @JsonKey() Color color}) = _$_TaskTag;

  factory _TaskTag.fromJson(Map<String, dynamic> json) = _$_TaskTag.fromJson;

  @override
  @JsonKey(name: "tag")
  String? get tag => throw _privateConstructorUsedError;
  @override
  @ColorSerialiser()
  @JsonKey()
  Color get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskTagCopyWith<_TaskTag> get copyWith =>
      throw _privateConstructorUsedError;
}
