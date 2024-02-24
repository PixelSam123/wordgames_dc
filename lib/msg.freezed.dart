// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'msg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Message _$MessageFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'ChatMessage':
      return ChatMessage.fromJson(json);
    case 'OngoingRoundInfo':
      return OngoingRoundInfo.fromJson(json);
    case 'FinishedRoundInfo':
      return FinishedRoundInfo.fromJson(json);
    case 'FinishedGame':
      return FinishedGame.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Message', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Message {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) chatMessage,
    required TResult Function(OngoingRoundInfoContent content) ongoingRoundInfo,
    required TResult Function(FinishedRoundInfoContent content)
        finishedRoundInfo,
    required TResult Function() finishedGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content)? chatMessage,
    TResult? Function(OngoingRoundInfoContent content)? ongoingRoundInfo,
    TResult? Function(FinishedRoundInfoContent content)? finishedRoundInfo,
    TResult? Function()? finishedGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? chatMessage,
    TResult Function(OngoingRoundInfoContent content)? ongoingRoundInfo,
    TResult Function(FinishedRoundInfoContent content)? finishedRoundInfo,
    TResult Function()? finishedGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessage value) chatMessage,
    required TResult Function(OngoingRoundInfo value) ongoingRoundInfo,
    required TResult Function(FinishedRoundInfo value) finishedRoundInfo,
    required TResult Function(FinishedGame value) finishedGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage value)? chatMessage,
    TResult? Function(OngoingRoundInfo value)? ongoingRoundInfo,
    TResult? Function(FinishedRoundInfo value)? finishedRoundInfo,
    TResult? Function(FinishedGame value)? finishedGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessage value)? chatMessage,
    TResult Function(OngoingRoundInfo value)? ongoingRoundInfo,
    TResult Function(FinishedRoundInfo value)? finishedRoundInfo,
    TResult Function(FinishedGame value)? finishedGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
          _$ChatMessageImpl value, $Res Function(_$ChatMessageImpl) then) =
      __$$ChatMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
      _$ChatMessageImpl _value, $Res Function(_$ChatMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$ChatMessageImpl(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageImpl implements ChatMessage {
  const _$ChatMessageImpl(this.content, {final String? $type})
      : $type = $type ?? 'ChatMessage';

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  @override
  final String content;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.chatMessage(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) chatMessage,
    required TResult Function(OngoingRoundInfoContent content) ongoingRoundInfo,
    required TResult Function(FinishedRoundInfoContent content)
        finishedRoundInfo,
    required TResult Function() finishedGame,
  }) {
    return chatMessage(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content)? chatMessage,
    TResult? Function(OngoingRoundInfoContent content)? ongoingRoundInfo,
    TResult? Function(FinishedRoundInfoContent content)? finishedRoundInfo,
    TResult? Function()? finishedGame,
  }) {
    return chatMessage?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? chatMessage,
    TResult Function(OngoingRoundInfoContent content)? ongoingRoundInfo,
    TResult Function(FinishedRoundInfoContent content)? finishedRoundInfo,
    TResult Function()? finishedGame,
    required TResult orElse(),
  }) {
    if (chatMessage != null) {
      return chatMessage(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessage value) chatMessage,
    required TResult Function(OngoingRoundInfo value) ongoingRoundInfo,
    required TResult Function(FinishedRoundInfo value) finishedRoundInfo,
    required TResult Function(FinishedGame value) finishedGame,
  }) {
    return chatMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage value)? chatMessage,
    TResult? Function(OngoingRoundInfo value)? ongoingRoundInfo,
    TResult? Function(FinishedRoundInfo value)? finishedRoundInfo,
    TResult? Function(FinishedGame value)? finishedGame,
  }) {
    return chatMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessage value)? chatMessage,
    TResult Function(OngoingRoundInfo value)? ongoingRoundInfo,
    TResult Function(FinishedRoundInfo value)? finishedRoundInfo,
    TResult Function(FinishedGame value)? finishedGame,
    required TResult orElse(),
  }) {
    if (chatMessage != null) {
      return chatMessage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(
      this,
    );
  }
}

abstract class ChatMessage implements Message {
  const factory ChatMessage(final String content) = _$ChatMessageImpl;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  String get content;
  @JsonKey(ignore: true)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OngoingRoundInfoImplCopyWith<$Res> {
  factory _$$OngoingRoundInfoImplCopyWith(_$OngoingRoundInfoImpl value,
          $Res Function(_$OngoingRoundInfoImpl) then) =
      __$$OngoingRoundInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OngoingRoundInfoContent content});

  $OngoingRoundInfoContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$OngoingRoundInfoImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$OngoingRoundInfoImpl>
    implements _$$OngoingRoundInfoImplCopyWith<$Res> {
  __$$OngoingRoundInfoImplCopyWithImpl(_$OngoingRoundInfoImpl _value,
      $Res Function(_$OngoingRoundInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$OngoingRoundInfoImpl(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as OngoingRoundInfoContent,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OngoingRoundInfoContentCopyWith<$Res> get content {
    return $OngoingRoundInfoContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$OngoingRoundInfoImpl implements OngoingRoundInfo {
  const _$OngoingRoundInfoImpl(this.content, {final String? $type})
      : $type = $type ?? 'OngoingRoundInfo';

  factory _$OngoingRoundInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OngoingRoundInfoImplFromJson(json);

  @override
  final OngoingRoundInfoContent content;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.ongoingRoundInfo(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OngoingRoundInfoImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OngoingRoundInfoImplCopyWith<_$OngoingRoundInfoImpl> get copyWith =>
      __$$OngoingRoundInfoImplCopyWithImpl<_$OngoingRoundInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) chatMessage,
    required TResult Function(OngoingRoundInfoContent content) ongoingRoundInfo,
    required TResult Function(FinishedRoundInfoContent content)
        finishedRoundInfo,
    required TResult Function() finishedGame,
  }) {
    return ongoingRoundInfo(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content)? chatMessage,
    TResult? Function(OngoingRoundInfoContent content)? ongoingRoundInfo,
    TResult? Function(FinishedRoundInfoContent content)? finishedRoundInfo,
    TResult? Function()? finishedGame,
  }) {
    return ongoingRoundInfo?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? chatMessage,
    TResult Function(OngoingRoundInfoContent content)? ongoingRoundInfo,
    TResult Function(FinishedRoundInfoContent content)? finishedRoundInfo,
    TResult Function()? finishedGame,
    required TResult orElse(),
  }) {
    if (ongoingRoundInfo != null) {
      return ongoingRoundInfo(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessage value) chatMessage,
    required TResult Function(OngoingRoundInfo value) ongoingRoundInfo,
    required TResult Function(FinishedRoundInfo value) finishedRoundInfo,
    required TResult Function(FinishedGame value) finishedGame,
  }) {
    return ongoingRoundInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage value)? chatMessage,
    TResult? Function(OngoingRoundInfo value)? ongoingRoundInfo,
    TResult? Function(FinishedRoundInfo value)? finishedRoundInfo,
    TResult? Function(FinishedGame value)? finishedGame,
  }) {
    return ongoingRoundInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessage value)? chatMessage,
    TResult Function(OngoingRoundInfo value)? ongoingRoundInfo,
    TResult Function(FinishedRoundInfo value)? finishedRoundInfo,
    TResult Function(FinishedGame value)? finishedGame,
    required TResult orElse(),
  }) {
    if (ongoingRoundInfo != null) {
      return ongoingRoundInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OngoingRoundInfoImplToJson(
      this,
    );
  }
}

abstract class OngoingRoundInfo implements Message {
  const factory OngoingRoundInfo(final OngoingRoundInfoContent content) =
      _$OngoingRoundInfoImpl;

  factory OngoingRoundInfo.fromJson(Map<String, dynamic> json) =
      _$OngoingRoundInfoImpl.fromJson;

  OngoingRoundInfoContent get content;
  @JsonKey(ignore: true)
  _$$OngoingRoundInfoImplCopyWith<_$OngoingRoundInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishedRoundInfoImplCopyWith<$Res> {
  factory _$$FinishedRoundInfoImplCopyWith(_$FinishedRoundInfoImpl value,
          $Res Function(_$FinishedRoundInfoImpl) then) =
      __$$FinishedRoundInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FinishedRoundInfoContent content});

  $FinishedRoundInfoContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$FinishedRoundInfoImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$FinishedRoundInfoImpl>
    implements _$$FinishedRoundInfoImplCopyWith<$Res> {
  __$$FinishedRoundInfoImplCopyWithImpl(_$FinishedRoundInfoImpl _value,
      $Res Function(_$FinishedRoundInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$FinishedRoundInfoImpl(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as FinishedRoundInfoContent,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FinishedRoundInfoContentCopyWith<$Res> get content {
    return $FinishedRoundInfoContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FinishedRoundInfoImpl implements FinishedRoundInfo {
  const _$FinishedRoundInfoImpl(this.content, {final String? $type})
      : $type = $type ?? 'FinishedRoundInfo';

  factory _$FinishedRoundInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinishedRoundInfoImplFromJson(json);

  @override
  final FinishedRoundInfoContent content;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.finishedRoundInfo(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishedRoundInfoImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishedRoundInfoImplCopyWith<_$FinishedRoundInfoImpl> get copyWith =>
      __$$FinishedRoundInfoImplCopyWithImpl<_$FinishedRoundInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) chatMessage,
    required TResult Function(OngoingRoundInfoContent content) ongoingRoundInfo,
    required TResult Function(FinishedRoundInfoContent content)
        finishedRoundInfo,
    required TResult Function() finishedGame,
  }) {
    return finishedRoundInfo(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content)? chatMessage,
    TResult? Function(OngoingRoundInfoContent content)? ongoingRoundInfo,
    TResult? Function(FinishedRoundInfoContent content)? finishedRoundInfo,
    TResult? Function()? finishedGame,
  }) {
    return finishedRoundInfo?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? chatMessage,
    TResult Function(OngoingRoundInfoContent content)? ongoingRoundInfo,
    TResult Function(FinishedRoundInfoContent content)? finishedRoundInfo,
    TResult Function()? finishedGame,
    required TResult orElse(),
  }) {
    if (finishedRoundInfo != null) {
      return finishedRoundInfo(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessage value) chatMessage,
    required TResult Function(OngoingRoundInfo value) ongoingRoundInfo,
    required TResult Function(FinishedRoundInfo value) finishedRoundInfo,
    required TResult Function(FinishedGame value) finishedGame,
  }) {
    return finishedRoundInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage value)? chatMessage,
    TResult? Function(OngoingRoundInfo value)? ongoingRoundInfo,
    TResult? Function(FinishedRoundInfo value)? finishedRoundInfo,
    TResult? Function(FinishedGame value)? finishedGame,
  }) {
    return finishedRoundInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessage value)? chatMessage,
    TResult Function(OngoingRoundInfo value)? ongoingRoundInfo,
    TResult Function(FinishedRoundInfo value)? finishedRoundInfo,
    TResult Function(FinishedGame value)? finishedGame,
    required TResult orElse(),
  }) {
    if (finishedRoundInfo != null) {
      return finishedRoundInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FinishedRoundInfoImplToJson(
      this,
    );
  }
}

abstract class FinishedRoundInfo implements Message {
  const factory FinishedRoundInfo(final FinishedRoundInfoContent content) =
      _$FinishedRoundInfoImpl;

  factory FinishedRoundInfo.fromJson(Map<String, dynamic> json) =
      _$FinishedRoundInfoImpl.fromJson;

  FinishedRoundInfoContent get content;
  @JsonKey(ignore: true)
  _$$FinishedRoundInfoImplCopyWith<_$FinishedRoundInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishedGameImplCopyWith<$Res> {
  factory _$$FinishedGameImplCopyWith(
          _$FinishedGameImpl value, $Res Function(_$FinishedGameImpl) then) =
      __$$FinishedGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinishedGameImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$FinishedGameImpl>
    implements _$$FinishedGameImplCopyWith<$Res> {
  __$$FinishedGameImplCopyWithImpl(
      _$FinishedGameImpl _value, $Res Function(_$FinishedGameImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FinishedGameImpl implements FinishedGame {
  const _$FinishedGameImpl({final String? $type})
      : $type = $type ?? 'FinishedGame';

  factory _$FinishedGameImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinishedGameImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.finishedGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FinishedGameImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) chatMessage,
    required TResult Function(OngoingRoundInfoContent content) ongoingRoundInfo,
    required TResult Function(FinishedRoundInfoContent content)
        finishedRoundInfo,
    required TResult Function() finishedGame,
  }) {
    return finishedGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content)? chatMessage,
    TResult? Function(OngoingRoundInfoContent content)? ongoingRoundInfo,
    TResult? Function(FinishedRoundInfoContent content)? finishedRoundInfo,
    TResult? Function()? finishedGame,
  }) {
    return finishedGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? chatMessage,
    TResult Function(OngoingRoundInfoContent content)? ongoingRoundInfo,
    TResult Function(FinishedRoundInfoContent content)? finishedRoundInfo,
    TResult Function()? finishedGame,
    required TResult orElse(),
  }) {
    if (finishedGame != null) {
      return finishedGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessage value) chatMessage,
    required TResult Function(OngoingRoundInfo value) ongoingRoundInfo,
    required TResult Function(FinishedRoundInfo value) finishedRoundInfo,
    required TResult Function(FinishedGame value) finishedGame,
  }) {
    return finishedGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage value)? chatMessage,
    TResult? Function(OngoingRoundInfo value)? ongoingRoundInfo,
    TResult? Function(FinishedRoundInfo value)? finishedRoundInfo,
    TResult? Function(FinishedGame value)? finishedGame,
  }) {
    return finishedGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessage value)? chatMessage,
    TResult Function(OngoingRoundInfo value)? ongoingRoundInfo,
    TResult Function(FinishedRoundInfo value)? finishedRoundInfo,
    TResult Function(FinishedGame value)? finishedGame,
    required TResult orElse(),
  }) {
    if (finishedGame != null) {
      return finishedGame(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FinishedGameImplToJson(
      this,
    );
  }
}

abstract class FinishedGame implements Message {
  const factory FinishedGame() = _$FinishedGameImpl;

  factory FinishedGame.fromJson(Map<String, dynamic> json) =
      _$FinishedGameImpl.fromJson;
}

OngoingRoundInfoContent _$OngoingRoundInfoContentFromJson(
    Map<String, dynamic> json) {
  return _OngoingRoundInfoContent.fromJson(json);
}

/// @nodoc
mixin _$OngoingRoundInfoContent {
  String get wordToGuess => throw _privateConstructorUsedError;
  String get roundFinishTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OngoingRoundInfoContentCopyWith<OngoingRoundInfoContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OngoingRoundInfoContentCopyWith<$Res> {
  factory $OngoingRoundInfoContentCopyWith(OngoingRoundInfoContent value,
          $Res Function(OngoingRoundInfoContent) then) =
      _$OngoingRoundInfoContentCopyWithImpl<$Res, OngoingRoundInfoContent>;
  @useResult
  $Res call({String wordToGuess, String roundFinishTime});
}

/// @nodoc
class _$OngoingRoundInfoContentCopyWithImpl<$Res,
        $Val extends OngoingRoundInfoContent>
    implements $OngoingRoundInfoContentCopyWith<$Res> {
  _$OngoingRoundInfoContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordToGuess = null,
    Object? roundFinishTime = null,
  }) {
    return _then(_value.copyWith(
      wordToGuess: null == wordToGuess
          ? _value.wordToGuess
          : wordToGuess // ignore: cast_nullable_to_non_nullable
              as String,
      roundFinishTime: null == roundFinishTime
          ? _value.roundFinishTime
          : roundFinishTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OngoingRoundInfoContentImplCopyWith<$Res>
    implements $OngoingRoundInfoContentCopyWith<$Res> {
  factory _$$OngoingRoundInfoContentImplCopyWith(
          _$OngoingRoundInfoContentImpl value,
          $Res Function(_$OngoingRoundInfoContentImpl) then) =
      __$$OngoingRoundInfoContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String wordToGuess, String roundFinishTime});
}

/// @nodoc
class __$$OngoingRoundInfoContentImplCopyWithImpl<$Res>
    extends _$OngoingRoundInfoContentCopyWithImpl<$Res,
        _$OngoingRoundInfoContentImpl>
    implements _$$OngoingRoundInfoContentImplCopyWith<$Res> {
  __$$OngoingRoundInfoContentImplCopyWithImpl(
      _$OngoingRoundInfoContentImpl _value,
      $Res Function(_$OngoingRoundInfoContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordToGuess = null,
    Object? roundFinishTime = null,
  }) {
    return _then(_$OngoingRoundInfoContentImpl(
      wordToGuess: null == wordToGuess
          ? _value.wordToGuess
          : wordToGuess // ignore: cast_nullable_to_non_nullable
              as String,
      roundFinishTime: null == roundFinishTime
          ? _value.roundFinishTime
          : roundFinishTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$OngoingRoundInfoContentImpl implements _OngoingRoundInfoContent {
  const _$OngoingRoundInfoContentImpl(
      {required this.wordToGuess, required this.roundFinishTime});

  factory _$OngoingRoundInfoContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$OngoingRoundInfoContentImplFromJson(json);

  @override
  final String wordToGuess;
  @override
  final String roundFinishTime;

  @override
  String toString() {
    return 'OngoingRoundInfoContent(wordToGuess: $wordToGuess, roundFinishTime: $roundFinishTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OngoingRoundInfoContentImpl &&
            (identical(other.wordToGuess, wordToGuess) ||
                other.wordToGuess == wordToGuess) &&
            (identical(other.roundFinishTime, roundFinishTime) ||
                other.roundFinishTime == roundFinishTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wordToGuess, roundFinishTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OngoingRoundInfoContentImplCopyWith<_$OngoingRoundInfoContentImpl>
      get copyWith => __$$OngoingRoundInfoContentImplCopyWithImpl<
          _$OngoingRoundInfoContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OngoingRoundInfoContentImplToJson(
      this,
    );
  }
}

abstract class _OngoingRoundInfoContent implements OngoingRoundInfoContent {
  const factory _OngoingRoundInfoContent(
      {required final String wordToGuess,
      required final String roundFinishTime}) = _$OngoingRoundInfoContentImpl;

  factory _OngoingRoundInfoContent.fromJson(Map<String, dynamic> json) =
      _$OngoingRoundInfoContentImpl.fromJson;

  @override
  String get wordToGuess;
  @override
  String get roundFinishTime;
  @override
  @JsonKey(ignore: true)
  _$$OngoingRoundInfoContentImplCopyWith<_$OngoingRoundInfoContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FinishedRoundInfoContent _$FinishedRoundInfoContentFromJson(
    Map<String, dynamic> json) {
  return _FinishedRoundInfoContent.fromJson(json);
}

/// @nodoc
mixin _$FinishedRoundInfoContent {
  String get wordAnswer => throw _privateConstructorUsedError;
  String get toNextRoundTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinishedRoundInfoContentCopyWith<FinishedRoundInfoContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishedRoundInfoContentCopyWith<$Res> {
  factory $FinishedRoundInfoContentCopyWith(FinishedRoundInfoContent value,
          $Res Function(FinishedRoundInfoContent) then) =
      _$FinishedRoundInfoContentCopyWithImpl<$Res, FinishedRoundInfoContent>;
  @useResult
  $Res call({String wordAnswer, String toNextRoundTime});
}

/// @nodoc
class _$FinishedRoundInfoContentCopyWithImpl<$Res,
        $Val extends FinishedRoundInfoContent>
    implements $FinishedRoundInfoContentCopyWith<$Res> {
  _$FinishedRoundInfoContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordAnswer = null,
    Object? toNextRoundTime = null,
  }) {
    return _then(_value.copyWith(
      wordAnswer: null == wordAnswer
          ? _value.wordAnswer
          : wordAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      toNextRoundTime: null == toNextRoundTime
          ? _value.toNextRoundTime
          : toNextRoundTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinishedRoundInfoContentImplCopyWith<$Res>
    implements $FinishedRoundInfoContentCopyWith<$Res> {
  factory _$$FinishedRoundInfoContentImplCopyWith(
          _$FinishedRoundInfoContentImpl value,
          $Res Function(_$FinishedRoundInfoContentImpl) then) =
      __$$FinishedRoundInfoContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String wordAnswer, String toNextRoundTime});
}

/// @nodoc
class __$$FinishedRoundInfoContentImplCopyWithImpl<$Res>
    extends _$FinishedRoundInfoContentCopyWithImpl<$Res,
        _$FinishedRoundInfoContentImpl>
    implements _$$FinishedRoundInfoContentImplCopyWith<$Res> {
  __$$FinishedRoundInfoContentImplCopyWithImpl(
      _$FinishedRoundInfoContentImpl _value,
      $Res Function(_$FinishedRoundInfoContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordAnswer = null,
    Object? toNextRoundTime = null,
  }) {
    return _then(_$FinishedRoundInfoContentImpl(
      wordAnswer: null == wordAnswer
          ? _value.wordAnswer
          : wordAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      toNextRoundTime: null == toNextRoundTime
          ? _value.toNextRoundTime
          : toNextRoundTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$FinishedRoundInfoContentImpl implements _FinishedRoundInfoContent {
  const _$FinishedRoundInfoContentImpl(
      {required this.wordAnswer, required this.toNextRoundTime});

  factory _$FinishedRoundInfoContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinishedRoundInfoContentImplFromJson(json);

  @override
  final String wordAnswer;
  @override
  final String toNextRoundTime;

  @override
  String toString() {
    return 'FinishedRoundInfoContent(wordAnswer: $wordAnswer, toNextRoundTime: $toNextRoundTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishedRoundInfoContentImpl &&
            (identical(other.wordAnswer, wordAnswer) ||
                other.wordAnswer == wordAnswer) &&
            (identical(other.toNextRoundTime, toNextRoundTime) ||
                other.toNextRoundTime == toNextRoundTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wordAnswer, toNextRoundTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishedRoundInfoContentImplCopyWith<_$FinishedRoundInfoContentImpl>
      get copyWith => __$$FinishedRoundInfoContentImplCopyWithImpl<
          _$FinishedRoundInfoContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinishedRoundInfoContentImplToJson(
      this,
    );
  }
}

abstract class _FinishedRoundInfoContent implements FinishedRoundInfoContent {
  const factory _FinishedRoundInfoContent(
      {required final String wordAnswer,
      required final String toNextRoundTime}) = _$FinishedRoundInfoContentImpl;

  factory _FinishedRoundInfoContent.fromJson(Map<String, dynamic> json) =
      _$FinishedRoundInfoContentImpl.fromJson;

  @override
  String get wordAnswer;
  @override
  String get toNextRoundTime;
  @override
  @JsonKey(ignore: true)
  _$$FinishedRoundInfoContentImplCopyWith<_$FinishedRoundInfoContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
