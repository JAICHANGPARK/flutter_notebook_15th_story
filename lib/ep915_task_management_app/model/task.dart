import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'task_relate.dart';
import 'task_tag.dart';

part 'task.freezed.dart';

part 'task.g.dart';

@freezed
class Task with _$Task {
  factory Task({
    String? title,
    String? dueDateTime,
    String? description,
    List<TaskTag>? taskTags,
    TaskRelate? taskRelate,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
