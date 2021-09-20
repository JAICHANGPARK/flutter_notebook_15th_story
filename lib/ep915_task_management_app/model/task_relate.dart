
import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class TaskRelate {
  int? _counter;
  List<String>? profileItems;

  factory TaskRelate({this._counter, this.profileItems});
}