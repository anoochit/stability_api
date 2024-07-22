// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_response_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChatCompletionResponseMessageRoleEnum
    _$chatCompletionResponseMessageRoleEnum_system =
    const ChatCompletionResponseMessageRoleEnum._('system');
const ChatCompletionResponseMessageRoleEnum
    _$chatCompletionResponseMessageRoleEnum_user =
    const ChatCompletionResponseMessageRoleEnum._('user');
const ChatCompletionResponseMessageRoleEnum
    _$chatCompletionResponseMessageRoleEnum_assistant =
    const ChatCompletionResponseMessageRoleEnum._('assistant');

ChatCompletionResponseMessageRoleEnum
    _$chatCompletionResponseMessageRoleEnumValueOf(String name) {
  switch (name) {
    case 'system':
      return _$chatCompletionResponseMessageRoleEnum_system;
    case 'user':
      return _$chatCompletionResponseMessageRoleEnum_user;
    case 'assistant':
      return _$chatCompletionResponseMessageRoleEnum_assistant;
    default:
      return _$chatCompletionResponseMessageRoleEnum_assistant;
  }
}

final BuiltSet<ChatCompletionResponseMessageRoleEnum>
    _$chatCompletionResponseMessageRoleEnumValues = new BuiltSet<
        ChatCompletionResponseMessageRoleEnum>(const <ChatCompletionResponseMessageRoleEnum>[
  _$chatCompletionResponseMessageRoleEnum_system,
  _$chatCompletionResponseMessageRoleEnum_user,
  _$chatCompletionResponseMessageRoleEnum_assistant,
]);

Serializer<ChatCompletionResponseMessageRoleEnum>
    _$chatCompletionResponseMessageRoleEnumSerializer =
    new _$ChatCompletionResponseMessageRoleEnumSerializer();

class _$ChatCompletionResponseMessageRoleEnumSerializer
    implements PrimitiveSerializer<ChatCompletionResponseMessageRoleEnum> {
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
    ChatCompletionResponseMessageRoleEnum
  ];
  @override
  final String wireName = 'ChatCompletionResponseMessageRoleEnum';

  @override
  Object serialize(
          Serializers serializers, ChatCompletionResponseMessageRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChatCompletionResponseMessageRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChatCompletionResponseMessageRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChatCompletionResponseMessage extends ChatCompletionResponseMessage {
  @override
  final ChatCompletionResponseMessageRoleEnum role;
  @override
  final String? content;
  @override
  final BuiltList<ChatCompletionMessageToolCall>? toolCalls;

  factory _$ChatCompletionResponseMessage(
          [void Function(ChatCompletionResponseMessageBuilder)? updates]) =>
      (new ChatCompletionResponseMessageBuilder()..update(updates))._build();

  _$ChatCompletionResponseMessage._(
      {required this.role, this.content, this.toolCalls})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        role, r'ChatCompletionResponseMessage', 'role');
  }

  @override
  ChatCompletionResponseMessage rebuild(
          void Function(ChatCompletionResponseMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatCompletionResponseMessageBuilder toBuilder() =>
      new ChatCompletionResponseMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatCompletionResponseMessage &&
        role == other.role &&
        content == other.content &&
        toolCalls == other.toolCalls;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, toolCalls.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatCompletionResponseMessage')
          ..add('role', role)
          ..add('content', content)
          ..add('toolCalls', toolCalls))
        .toString();
  }
}

class ChatCompletionResponseMessageBuilder
    implements
        Builder<ChatCompletionResponseMessage,
            ChatCompletionResponseMessageBuilder> {
  _$ChatCompletionResponseMessage? _$v;

  ChatCompletionResponseMessageRoleEnum? _role;
  ChatCompletionResponseMessageRoleEnum? get role => _$this._role;
  set role(ChatCompletionResponseMessageRoleEnum? role) => _$this._role = role;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  ListBuilder<ChatCompletionMessageToolCall>? _toolCalls;
  ListBuilder<ChatCompletionMessageToolCall> get toolCalls =>
      _$this._toolCalls ??= new ListBuilder<ChatCompletionMessageToolCall>();
  set toolCalls(ListBuilder<ChatCompletionMessageToolCall>? toolCalls) =>
      _$this._toolCalls = toolCalls;

  ChatCompletionResponseMessageBuilder() {
    ChatCompletionResponseMessage._defaults(this);
  }

  ChatCompletionResponseMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _content = $v.content;
      _toolCalls = $v.toolCalls?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatCompletionResponseMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatCompletionResponseMessage;
  }

  @override
  void update(void Function(ChatCompletionResponseMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatCompletionResponseMessage build() => _build();

  _$ChatCompletionResponseMessage _build() {
    _$ChatCompletionResponseMessage _$result;
    try {
      _$result = _$v ??
          new _$ChatCompletionResponseMessage._(
              role: BuiltValueNullFieldError.checkNotNull(
                  role, r'ChatCompletionResponseMessage', 'role'),
              content: content,
              toolCalls: _toolCalls?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'toolCalls';
        _toolCalls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatCompletionResponseMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
