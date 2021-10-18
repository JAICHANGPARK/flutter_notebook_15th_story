// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trapay_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrapayChatTearOff {
  const _$TrapayChatTearOff();

  _TrapayChat call(
      {String? avatarImg,
      String? name,
      String? message,
      bool? isRead,
      int? newMsgCount,
      String? msgTime}) {
    return _TrapayChat(
      avatarImg: avatarImg,
      name: name,
      message: message,
      isRead: isRead,
      newMsgCount: newMsgCount,
      msgTime: msgTime,
    );
  }
}

/// @nodoc
const $TrapayChat = _$TrapayChatTearOff();

/// @nodoc
mixin _$TrapayChat {
  String? get avatarImg => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isRead => throw _privateConstructorUsedError;
  int? get newMsgCount => throw _privateConstructorUsedError;
  String? get msgTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrapayChatCopyWith<TrapayChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrapayChatCopyWith<$Res> {
  factory $TrapayChatCopyWith(
          TrapayChat value, $Res Function(TrapayChat) then) =
      _$TrapayChatCopyWithImpl<$Res>;
  $Res call(
      {String? avatarImg,
      String? name,
      String? message,
      bool? isRead,
      int? newMsgCount,
      String? msgTime});
}

/// @nodoc
class _$TrapayChatCopyWithImpl<$Res> implements $TrapayChatCopyWith<$Res> {
  _$TrapayChatCopyWithImpl(this._value, this._then);

  final TrapayChat _value;
  // ignore: unused_field
  final $Res Function(TrapayChat) _then;

  @override
  $Res call({
    Object? avatarImg = freezed,
    Object? name = freezed,
    Object? message = freezed,
    Object? isRead = freezed,
    Object? newMsgCount = freezed,
    Object? msgTime = freezed,
  }) {
    return _then(_value.copyWith(
      avatarImg: avatarImg == freezed
          ? _value.avatarImg
          : avatarImg // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      newMsgCount: newMsgCount == freezed
          ? _value.newMsgCount
          : newMsgCount // ignore: cast_nullable_to_non_nullable
              as int?,
      msgTime: msgTime == freezed
          ? _value.msgTime
          : msgTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TrapayChatCopyWith<$Res> implements $TrapayChatCopyWith<$Res> {
  factory _$TrapayChatCopyWith(
          _TrapayChat value, $Res Function(_TrapayChat) then) =
      __$TrapayChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? avatarImg,
      String? name,
      String? message,
      bool? isRead,
      int? newMsgCount,
      String? msgTime});
}

/// @nodoc
class __$TrapayChatCopyWithImpl<$Res> extends _$TrapayChatCopyWithImpl<$Res>
    implements _$TrapayChatCopyWith<$Res> {
  __$TrapayChatCopyWithImpl(
      _TrapayChat _value, $Res Function(_TrapayChat) _then)
      : super(_value, (v) => _then(v as _TrapayChat));

  @override
  _TrapayChat get _value => super._value as _TrapayChat;

  @override
  $Res call({
    Object? avatarImg = freezed,
    Object? name = freezed,
    Object? message = freezed,
    Object? isRead = freezed,
    Object? newMsgCount = freezed,
    Object? msgTime = freezed,
  }) {
    return _then(_TrapayChat(
      avatarImg: avatarImg == freezed
          ? _value.avatarImg
          : avatarImg // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      newMsgCount: newMsgCount == freezed
          ? _value.newMsgCount
          : newMsgCount // ignore: cast_nullable_to_non_nullable
              as int?,
      msgTime: msgTime == freezed
          ? _value.msgTime
          : msgTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TrapayChat implements _TrapayChat {
  _$_TrapayChat(
      {this.avatarImg,
      this.name,
      this.message,
      this.isRead,
      this.newMsgCount,
      this.msgTime});

  @override
  final String? avatarImg;
  @override
  final String? name;
  @override
  final String? message;
  @override
  final bool? isRead;
  @override
  final int? newMsgCount;
  @override
  final String? msgTime;

  @override
  String toString() {
    return 'TrapayChat(avatarImg: $avatarImg, name: $name, message: $message, isRead: $isRead, newMsgCount: $newMsgCount, msgTime: $msgTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrapayChat &&
            (identical(other.avatarImg, avatarImg) ||
                other.avatarImg == avatarImg) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.newMsgCount, newMsgCount) ||
                other.newMsgCount == newMsgCount) &&
            (identical(other.msgTime, msgTime) || other.msgTime == msgTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, avatarImg, name, message, isRead, newMsgCount, msgTime);

  @JsonKey(ignore: true)
  @override
  _$TrapayChatCopyWith<_TrapayChat> get copyWith =>
      __$TrapayChatCopyWithImpl<_TrapayChat>(this, _$identity);
}

abstract class _TrapayChat implements TrapayChat {
  factory _TrapayChat(
      {String? avatarImg,
      String? name,
      String? message,
      bool? isRead,
      int? newMsgCount,
      String? msgTime}) = _$_TrapayChat;

  @override
  String? get avatarImg;
  @override
  String? get name;
  @override
  String? get message;
  @override
  bool? get isRead;
  @override
  int? get newMsgCount;
  @override
  String? get msgTime;
  @override
  @JsonKey(ignore: true)
  _$TrapayChatCopyWith<_TrapayChat> get copyWith =>
      throw _privateConstructorUsedError;
}
