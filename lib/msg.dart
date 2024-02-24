import 'package:freezed_annotation/freezed_annotation.dart';

part 'msg.freezed.dart';
part 'msg.g.dart';

@Freezed(unionKey: "type", unionValueCase: FreezedUnionCase.pascal)
class Message with _$Message {
  const factory Message.chatMessage(String content) = ChatMesssage;
  const factory Message.ongoingRoundInfo(OngoingRoundInfoContent content) =
      OngoingRoundInfo;
  const factory Message.finishedRoundInfo(FinishedRoundInfoContent content) =
      FinishedRoundInfo;
  const factory Message.finishedGame() = FinishedGame;

  factory Message.fromJson(
    Map<String, Object?> json,
  ) =>
      _$MessageFromJson(json);
}

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class OngoingRoundInfoContent with _$OngoingRoundInfoContent {
  const factory OngoingRoundInfoContent({
    required String wordToGuesss,
    required String roundFinishTime,
  }) = _OngoingRoundInfoContent;

  factory OngoingRoundInfoContent.fromJson(Map<String, Object?> json) =>
      _$OngoingRoundInfoContentFromJson(json);
}

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class FinishedRoundInfoContent with _$FinishedRoundInfoContent {
  const factory FinishedRoundInfoContent({
    required String wordToGuesss,
    required String toNextRoundTime,
  }) = _FinishedRoundInfoContent;

  factory FinishedRoundInfoContent.fromJson(Map<String, Object?> json) =>
      _$FinishedRoundInfoContentFromJson(json);
}
