// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JobTearOff {
  const _$JobTearOff();

  _Job call(
      {required String img,
      String? title,
      String? location,
      String? timeType,
      bool? isFavorite,
      String? uploadDate}) {
    return _Job(
      img: img,
      title: title,
      location: location,
      timeType: timeType,
      isFavorite: isFavorite,
      uploadDate: uploadDate,
    );
  }
}

/// @nodoc
const $Job = _$JobTearOff();

/// @nodoc
mixin _$Job {
  String get img => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get timeType => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;
  String? get uploadDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res>;
  $Res call(
      {String img,
      String? title,
      String? location,
      String? timeType,
      bool? isFavorite,
      String? uploadDate});
}

/// @nodoc
class _$JobCopyWithImpl<$Res> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  final Job _value;
  // ignore: unused_field
  final $Res Function(Job) _then;

  @override
  $Res call({
    Object? img = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? timeType = freezed,
    Object? isFavorite = freezed,
    Object? uploadDate = freezed,
  }) {
    return _then(_value.copyWith(
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      timeType: timeType == freezed
          ? _value.timeType
          : timeType // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      uploadDate: uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$JobCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$JobCopyWith(_Job value, $Res Function(_Job) then) =
      __$JobCopyWithImpl<$Res>;
  @override
  $Res call(
      {String img,
      String? title,
      String? location,
      String? timeType,
      bool? isFavorite,
      String? uploadDate});
}

/// @nodoc
class __$JobCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res>
    implements _$JobCopyWith<$Res> {
  __$JobCopyWithImpl(_Job _value, $Res Function(_Job) _then)
      : super(_value, (v) => _then(v as _Job));

  @override
  _Job get _value => super._value as _Job;

  @override
  $Res call({
    Object? img = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? timeType = freezed,
    Object? isFavorite = freezed,
    Object? uploadDate = freezed,
  }) {
    return _then(_Job(
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      timeType: timeType == freezed
          ? _value.timeType
          : timeType // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      uploadDate: uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Job implements _Job {
  _$_Job(
      {required this.img,
      this.title,
      this.location,
      this.timeType,
      this.isFavorite,
      this.uploadDate});

  @override
  final String img;
  @override
  final String? title;
  @override
  final String? location;
  @override
  final String? timeType;
  @override
  final bool? isFavorite;
  @override
  final String? uploadDate;

  @override
  String toString() {
    return 'Job(img: $img, title: $title, location: $location, timeType: $timeType, isFavorite: $isFavorite, uploadDate: $uploadDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Job &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.timeType, timeType) ||
                other.timeType == timeType) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.uploadDate, uploadDate) ||
                other.uploadDate == uploadDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, img, title, location, timeType, isFavorite, uploadDate);

  @JsonKey(ignore: true)
  @override
  _$JobCopyWith<_Job> get copyWith =>
      __$JobCopyWithImpl<_Job>(this, _$identity);
}

abstract class _Job implements Job {
  factory _Job(
      {required String img,
      String? title,
      String? location,
      String? timeType,
      bool? isFavorite,
      String? uploadDate}) = _$_Job;

  @override
  String get img;
  @override
  String? get title;
  @override
  String? get location;
  @override
  String? get timeType;
  @override
  bool? get isFavorite;
  @override
  String? get uploadDate;
  @override
  @JsonKey(ignore: true)
  _$JobCopyWith<_Job> get copyWith => throw _privateConstructorUsedError;
}
