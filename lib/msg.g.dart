// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OngoingRoundInfoContent _$OngoingRoundInfoContentFromJson(
        Map<String, dynamic> json) =>
    OngoingRoundInfoContent(
      wordToGuesss: json['word_to_guesss'] as String,
      roundFinishTime: json['round_finish_time'] as String,
    );

Map<String, dynamic> _$OngoingRoundInfoContentToJson(
        OngoingRoundInfoContent instance) =>
    <String, dynamic>{
      'word_to_guesss': instance.wordToGuesss,
      'round_finish_time': instance.roundFinishTime,
    };

FinishedRoundInfoContent _$FinishedRoundInfoContentFromJson(
        Map<String, dynamic> json) =>
    FinishedRoundInfoContent(
      wordToGuesss: json['word_to_guesss'] as String,
      toNextRoundTime: json['to_next_round_time'] as String,
    );

Map<String, dynamic> _$FinishedRoundInfoContentToJson(
        FinishedRoundInfoContent instance) =>
    <String, dynamic>{
      'word_to_guesss': instance.wordToGuesss,
      'to_next_round_time': instance.toNextRoundTime,
    };

_$ChatMesssageImpl _$$ChatMesssageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMesssageImpl(
      json['content'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ChatMesssageImplToJson(_$ChatMesssageImpl instance) =>
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
      wordToGuesss: json['wordToGuesss'] as String,
      roundFinishTime: json['roundFinishTime'] as String,
    );

Map<String, dynamic> _$$OngoingRoundInfoContentImplToJson(
        _$OngoingRoundInfoContentImpl instance) =>
    <String, dynamic>{
      'wordToGuesss': instance.wordToGuesss,
      'roundFinishTime': instance.roundFinishTime,
    };

_$FinishedRoundInfoContentImpl _$$FinishedRoundInfoContentImplFromJson(
        Map<String, dynamic> json) =>
    _$FinishedRoundInfoContentImpl(
      wordToGuesss: json['wordToGuesss'] as String,
      toNextRoundTime: json['toNextRoundTime'] as String,
    );

Map<String, dynamic> _$$FinishedRoundInfoContentImplToJson(
        _$FinishedRoundInfoContentImpl instance) =>
    <String, dynamic>{
      'wordToGuesss': instance.wordToGuesss,
      'toNextRoundTime': instance.toNextRoundTime,
    };
