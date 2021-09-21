// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_to_do.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskTodo _$$_TaskTodoFromJson(Map<String, dynamic> json) => _$_TaskTodo(
      priority: json['priority'] as String,
      title: json['title'] as String,
      dueDatetime: json['dueDatetime'] as String,
    );

Map<String, dynamic> _$$_TaskTodoToJson(_$_TaskTodo instance) =>
    <String, dynamic>{
      'priority': instance.priority,
      'title': instance.title,
      'dueDatetime': instance.dueDatetime,
    };
