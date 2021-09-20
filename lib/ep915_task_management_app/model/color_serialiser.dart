/// https://developer.school/flutter-using-json_serializable-to-serialise-dart-classes/
/// https://github.com/rrousselGit/freezed/issues/149

import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

class ColorSerialiser implements JsonConverter<Color, int> {
  const ColorSerialiser();
  static const Color defaultColor = Color.fromRGBO(0, 0, 0, 0);

  @override
  Color fromJson(int json) => Color(json);

  @override
  int toJson(Color color) => color.value;
}