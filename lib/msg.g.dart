// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      json['content'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'type': instance.$type,
    };

_$OngoingRoundInfoImpl _$$OngoingRoundInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$OngoingRoundInfoImpl(
      OngoingRoundInfoContent.fromJson(json['content'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OngoingRoundInfoImplToJson(
        _$OngoingRoundInfoImpl instance) =>
    <String, dynamic>{
      'content': instance.content.toJson(),
      'type': instance.$type,
    };

_$FinishedRoundInfoImpl _$$FinishedRoundInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$FinishedRoundInfoImpl(
      FinishedRoundInfoContent.fromJson(
          json['content'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FinishedRoundInfoImplToJson(
        _$FinishedRoundInfoImpl instance) =>
    <String, dynamic>{
      'content': instance.content.toJson(),
      'type': instance.$type,
    };

_$FinishedGameImpl _$$FinishedGameImplFromJson(Map<String, dynamic> json) =>
    _$FinishedGameImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FinishedGameImplToJson(_$FinishedGameImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$OngoingRoundInfoContentImpl _$$OngoingRoundInfoContentImplFromJson(
        Map<String, dynamic> json) =>
    _$OngoingRoundInfoContentImpl(
      wordToGuess: json['word_to_guess'] as String,
      roundFinishTime: json['round_finish_time'] as String,
    );

Map<String, dynamic> _$$OngoingRoundInfoContentImplToJson(
        _$OngoingRoundInfoContentImpl instance) =>
    <String, dynamic>{
      'word_to_guess': instance.wordToGuess,
      'round_finish_time': instance.roundFinishTime,
    };

_$FinishedRoundInfoContentImpl _$$FinishedRoundInfoContentImplFromJson(
        Map<String, dynamic> json) =>
    _$FinishedRoundInfoContentImpl(
      wordAnswer: json['word_answer'] as String,
      toNextRoundTime: json['to_next_round_time'] as String,
    );

Map<String, dynamic> _$$FinishedRoundInfoContentImplToJson(
        _$FinishedRoundInfoContentImpl instance) =>
    <String, dynamic>{
      'word_answer': instance.wordAnswer,
      'to_next_round_time': instance.toNextRoundTime,
    };
