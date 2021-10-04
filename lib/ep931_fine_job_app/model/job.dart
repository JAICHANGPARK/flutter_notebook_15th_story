import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';

@freezed
class Job with _$Job {
  factory Job({
    required String img,
    String? title,
    String? location,
    String? timeType,
    bool? isFavorite,
    String? uploadDate,
  }) = _Job;
}
