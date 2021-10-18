import 'package:freezed_annotation/freezed_annotation.dart';

part 'trapay_chat.freezed.dart';

@freezed
class TrapayChat with _$TrapayChat {
  factory TrapayChat({
    String? avatarImg,
  }) = _TrapayChat;
}
