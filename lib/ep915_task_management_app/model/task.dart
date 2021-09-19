import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

class TaskTag {
  String? tag;
  Color? color;

  TaskTag({this.tag, this.color});
}

class TaskRelate {
  int? counter;
  List<String>? profileItems;

  TaskRelate({this.counter, this.profileItems});
}

@freezed
class Task with _$Task {
  factory Task({
    String? title,
    String? dueDateTime,
    String? description,
    List<TaskTag?>? taskTags,
    TaskRelate? taskRelate,
  }) = _Task;
}
