import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_tag.freezed.dart';

part 'task_tag.g.dart';

@freezed
class TaskTag with _$TaskTag {
  factory TaskTag({String? tag, Color? color}) = _TaskTag;

  factory TaskTag.fromJson(Map<String, dynamic> json) => _$TaskTagFromJson(json);
}
