// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_request_message_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatCompletionRequestMessageContent
    extends ChatCompletionRequestMessageContent {
  @override
  final OneOf oneOf;

  factory _$ChatCompletionRequestMessageContent(
          [void Function(ChatCompletionRequestMessageContentBuilder)?
              updates]) =>
      (new ChatCompletionRequestMessageContentBuilder()..update(updates))
          ._build();

  _$ChatCompletionRequestMessageContent._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'ChatCompletionRequestMessageContent', 'oneOf');
  }

  @override
  ChatCompletionRequestMessageContent rebuild(
          void Function(ChatCompletionRequestMessageContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatCompletionRequestMessageContentBuilder toBuilder() =>
      new ChatCompletionRequestMessageContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatCompletionRequestMessageContent && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatCompletionRequestMessageContent')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ChatCompletionRequestMessageContentBuilder
    implements
        Builder<ChatCompletionRequestMessageContent,
            ChatCompletionRequestMessageContentBuilder> {
  _$ChatCompletionRequestMessageContent? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ChatCompletionRequestMessageContentBuilder() {
    ChatCompletionRequestMessageContent._defaults(this);
  }

  ChatCompletionRequestMessageContentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatCompletionRequestMessageContent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatCompletionRequestMessageContent;
  }

  @override
  void update(
      void Function(ChatCompletionRequestMessageContentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatCompletionRequestMessageContent build() => _build();

  _$ChatCompletionRequestMessageContent _build() {
    final _$result = _$v ??
        new _$ChatCompletionRequestMessageContent._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'ChatCompletionRequestMessageContent', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
