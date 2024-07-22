// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_request_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChatCompletionRequestMessageRoleEnum
    _$chatCompletionRequestMessageRoleEnum_system =
    const ChatCompletionRequestMessageRoleEnum._('system');
const ChatCompletionRequestMessageRoleEnum
    _$chatCompletionRequestMessageRoleEnum_user =
    const ChatCompletionRequestMessageRoleEnum._('user');
const ChatCompletionRequestMessageRoleEnum
    _$chatCompletionRequestMessageRoleEnum_assistant =
    const ChatCompletionRequestMessageRoleEnum._('assistant');

ChatCompletionRequestMessageRoleEnum
    _$chatCompletionRequestMessageRoleEnumValueOf(String name) {
  switch (name) {
    case 'system':
      return _$chatCompletionRequestMessageRoleEnum_system;
    case 'user':
      return _$chatCompletionRequestMessageRoleEnum_user;
    case 'assistant':
      return _$chatCompletionRequestMessageRoleEnum_assistant;
    default:
      return _$chatCompletionRequestMessageRoleEnum_assistant;
  }
}

final BuiltSet<ChatCompletionRequestMessageRoleEnum>
    _$chatCompletionRequestMessageRoleEnumValues = new BuiltSet<
        ChatCompletionRequestMessageRoleEnum>(const <ChatCompletionRequestMessageRoleEnum>[
  _$chatCompletionRequestMessageRoleEnum_system,
  _$chatCompletionRequestMessageRoleEnum_user,
  _$chatCompletionRequestMessageRoleEnum_assistant,
]);

Serializer<ChatCompletionRequestMessageRoleEnum>
    _$chatCompletionRequestMessageRoleEnumSerializer =
    new _$ChatCompletionRequestMessageRoleEnumSerializer();

class _$ChatCompletionRequestMessageRoleEnumSerializer
    implements PrimitiveSerializer<ChatCompletionRequestMessageRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'system': 'system',
    'user': 'user',
    'assistant': 'assistant',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'system': 'system',
    'user': 'user',
    'assistant': 'assistant',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChatCompletionRequestMessageRoleEnum
  ];
  @override
  final String wireName = 'ChatCompletionRequestMessageRoleEnum';

  @override
  Object serialize(
          Serializers serializers, ChatCompletionRequestMessageRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChatCompletionRequestMessageRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChatCompletionRequestMessageRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChatCompletionRequestMessage extends ChatCompletionRequestMessage {
  @override
  final ChatCompletionRequestMessageRoleEnum role;
  @override
  final ChatCompletionRequestMessageContent content;
  @override
  final String? name;

  factory _$ChatCompletionRequestMessage(
          [void Function(ChatCompletionRequestMessageBuilder)? updates]) =>
      (new ChatCompletionRequestMessageBuilder()..update(updates))._build();

  _$ChatCompletionRequestMessage._(
      {required this.role, required this.content, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        role, r'ChatCompletionRequestMessage', 'role');
    BuiltValueNullFieldError.checkNotNull(
        content, r'ChatCompletionRequestMessage', 'content');
  }

  @override
  ChatCompletionRequestMessage rebuild(
          void Function(ChatCompletionRequestMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatCompletionRequestMessageBuilder toBuilder() =>
      new ChatCompletionRequestMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatCompletionRequestMessage &&
        role == other.role &&
        content == other.content &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatCompletionRequestMessage')
          ..add('role', role)
          ..add('content', content)
          ..add('name', name))
        .toString();
  }
}

class ChatCompletionRequestMessageBuilder
    implements
        Builder<ChatCompletionRequestMessage,
            ChatCompletionRequestMessageBuilder> {
  _$ChatCompletionRequestMessage? _$v;

  ChatCompletionRequestMessageRoleEnum? _role;
  ChatCompletionRequestMessageRoleEnum? get role => _$this._role;
  set role(ChatCompletionRequestMessageRoleEnum? role) => _$this._role = role;

  ChatCompletionRequestMessageContentBuilder? _content;
  ChatCompletionRequestMessageContentBuilder get content =>
      _$this._content ??= new ChatCompletionRequestMessageContentBuilder();
  set content(ChatCompletionRequestMessageContentBuilder? content) =>
      _$this._content = content;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ChatCompletionRequestMessageBuilder() {
    ChatCompletionRequestMessage._defaults(this);
  }

  ChatCompletionRequestMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _content = $v.content.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatCompletionRequestMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatCompletionRequestMessage;
  }

  @override
  void update(void Function(ChatCompletionRequestMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatCompletionRequestMessage build() => _build();

  _$ChatCompletionRequestMessage _build() {
    _$ChatCompletionRequestMessage _$result;
    try {
      _$result = _$v ??
          new _$ChatCompletionRequestMessage._(
              role: BuiltValueNullFieldError.checkNotNull(
                  role, r'ChatCompletionRequestMessage', 'role'),
              content: content.build(),
              name: name);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'content';
        content.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatCompletionRequestMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
