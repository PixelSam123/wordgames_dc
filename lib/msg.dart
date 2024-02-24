import 'package:freezed_annotation/freezed_annotation.dart';

part 'msg.freezed.dart';
part 'msg.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.pascal)
class Message with _$Message {
  const factory Message.chatMessage(String content) = ChatMessage;
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
class OngoingRoundInfoContent with _$OngoingRoundInfoContent {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OngoingRoundInfoContent({
    required String wordToGuess,
    required String roundFinishTime,
  }) = _OngoingRoundInfoContent;

  factory OngoingRoundInfoContent.fromJson(Map<String, Object?> json) =>
      _$OngoingRoundInfoContentFromJson(json);
}

@freezed
class FinishedRoundInfoContent with _$FinishedRoundInfoContent {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory FinishedRoundInfoContent({
    required String wordAnswer,
    required String toNextRoundTime,
  }) = _FinishedRoundInfoContent;

  factory FinishedRoundInfoContent.fromJson(Map<String, Object?> json) =>
      _$FinishedRoundInfoContentFromJson(json);
}
