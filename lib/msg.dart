import 'package:freezed_annotation/freezed_annotation.dart';

part 'msg.freezed.dart';
part 'msg.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String type,
    required String content,
  }) = _Message;

  factory Message.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MessageFromJson(json);
}
