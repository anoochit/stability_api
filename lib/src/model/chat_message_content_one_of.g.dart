// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_content_one_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChatMessageContentOneOfTypeEnum _$chatMessageContentOneOfTypeEnum_text =
    const ChatMessageContentOneOfTypeEnum._('text');

ChatMessageContentOneOfTypeEnum _$chatMessageContentOneOfTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'text':
      return _$chatMessageContentOneOfTypeEnum_text;
    default:
      return _$chatMessageContentOneOfTypeEnum_text;
  }
}

final BuiltSet<ChatMessageContentOneOfTypeEnum>
    _$chatMessageContentOneOfTypeEnumValues = new BuiltSet<
        ChatMessageContentOneOfTypeEnum>(const <ChatMessageContentOneOfTypeEnum>[
  _$chatMessageContentOneOfTypeEnum_text,
]);

Serializer<ChatMessageContentOneOfTypeEnum>
    _$chatMessageContentOneOfTypeEnumSerializer =
    new _$ChatMessageContentOneOfTypeEnumSerializer();

class _$ChatMessageContentOneOfTypeEnumSerializer
    implements PrimitiveSerializer<ChatMessageContentOneOfTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'text': 'text',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'text': 'text',
  };

  @override
  final Iterable<Type> types = const <Type>[ChatMessageContentOneOfTypeEnum];
  @override
  final String wireName = 'ChatMessageContentOneOfTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ChatMessageContentOneOfTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChatMessageContentOneOfTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChatMessageContentOneOfTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChatMessageContentOneOf extends ChatMessageContentOneOf {
  @override
  final ChatMessageContentOneOfTypeEnum? type;
  @override
  final String? text;

  factory _$ChatMessageContentOneOf(
          [void Function(ChatMessageContentOneOfBuilder)? updates]) =>
      (new ChatMessageContentOneOfBuilder()..update(updates))._build();

  _$ChatMessageContentOneOf._({this.type, this.text}) : super._();

  @override
  ChatMessageContentOneOf rebuild(
          void Function(ChatMessageContentOneOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatMessageContentOneOfBuilder toBuilder() =>
      new ChatMessageContentOneOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatMessageContentOneOf &&
        type == other.type &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatMessageContentOneOf')
          ..add('type', type)
          ..add('text', text))
        .toString();
  }
}

class ChatMessageContentOneOfBuilder
    implements
        Builder<ChatMessageContentOneOf, ChatMessageContentOneOfBuilder> {
  _$ChatMessageContentOneOf? _$v;

  ChatMessageContentOneOfTypeEnum? _type;
  ChatMessageContentOneOfTypeEnum? get type => _$this._type;
  set type(ChatMessageContentOneOfTypeEnum? type) => _$this._type = type;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  ChatMessageContentOneOfBuilder() {
    ChatMessageContentOneOf._defaults(this);
  }

  ChatMessageContentOneOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatMessageContentOneOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatMessageContentOneOf;
  }

  @override
  void update(void Function(ChatMessageContentOneOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatMessageContentOneOf build() => _build();

  _$ChatMessageContentOneOf _build() {
    final _$result =
        _$v ?? new _$ChatMessageContentOneOf._(type: type, text: text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
