// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChatMessageContentTypeEnum _$chatMessageContentTypeEnum_text =
    const ChatMessageContentTypeEnum._('text');
const ChatMessageContentTypeEnum _$chatMessageContentTypeEnum_imageUrl =
    const ChatMessageContentTypeEnum._('imageUrl');

ChatMessageContentTypeEnum _$chatMessageContentTypeEnumValueOf(String name) {
  switch (name) {
    case 'text':
      return _$chatMessageContentTypeEnum_text;
    case 'imageUrl':
      return _$chatMessageContentTypeEnum_imageUrl;
    default:
      return _$chatMessageContentTypeEnum_imageUrl;
  }
}

final BuiltSet<ChatMessageContentTypeEnum> _$chatMessageContentTypeEnumValues =
    new BuiltSet<ChatMessageContentTypeEnum>(const <ChatMessageContentTypeEnum>[
  _$chatMessageContentTypeEnum_text,
  _$chatMessageContentTypeEnum_imageUrl,
]);

Serializer<ChatMessageContentTypeEnum> _$chatMessageContentTypeEnumSerializer =
    new _$ChatMessageContentTypeEnumSerializer();

class _$ChatMessageContentTypeEnumSerializer
    implements PrimitiveSerializer<ChatMessageContentTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'text': 'text',
    'imageUrl': 'image_url',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'text': 'text',
    'image_url': 'imageUrl',
  };

  @override
  final Iterable<Type> types = const <Type>[ChatMessageContentTypeEnum];
  @override
  final String wireName = 'ChatMessageContentTypeEnum';

  @override
  Object serialize(Serializers serializers, ChatMessageContentTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChatMessageContentTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChatMessageContentTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChatMessageContent extends ChatMessageContent {
  @override
  final OneOf oneOf;

  factory _$ChatMessageContent(
          [void Function(ChatMessageContentBuilder)? updates]) =>
      (new ChatMessageContentBuilder()..update(updates))._build();

  _$ChatMessageContent._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'ChatMessageContent', 'oneOf');
  }

  @override
  ChatMessageContent rebuild(
          void Function(ChatMessageContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatMessageContentBuilder toBuilder() =>
      new ChatMessageContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatMessageContent && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ChatMessageContent')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ChatMessageContentBuilder
    implements Builder<ChatMessageContent, ChatMessageContentBuilder> {
  _$ChatMessageContent? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ChatMessageContentBuilder() {
    ChatMessageContent._defaults(this);
  }

  ChatMessageContentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatMessageContent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatMessageContent;
  }

  @override
  void update(void Function(ChatMessageContentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatMessageContent build() => _build();

  _$ChatMessageContent _build() {
    final _$result = _$v ??
        new _$ChatMessageContent._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'ChatMessageContent', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
