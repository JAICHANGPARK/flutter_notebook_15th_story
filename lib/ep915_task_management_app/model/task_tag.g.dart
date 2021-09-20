// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskTag _$$_TaskTagFromJson(Map<String, dynamic> json) => _$_TaskTag(
      tag: json['tag'] as String?,
      color: json['color'] == null
          ? ColorSerialiser.defaultColor
          : const ColorSerialiser().fromJson(json['color'] as int),
    );

Map<String, dynamic> _$$_TaskTagToJson(_$_TaskTag instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'color': const ColorSerialiser().toJson(instance.color),
    };
