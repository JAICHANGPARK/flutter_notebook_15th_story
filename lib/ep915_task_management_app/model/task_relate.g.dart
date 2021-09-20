// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_relate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskRelate _$$_TaskRelateFromJson(Map<String, dynamic> json) =>
    _$_TaskRelate(
      counter: json['counter'] as int?,
      profileItems: (json['profileItems'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_TaskRelateToJson(_$_TaskRelate instance) =>
    <String, dynamic>{
      'counter': instance.counter,
      'profileItems': instance.profileItems,
    };
