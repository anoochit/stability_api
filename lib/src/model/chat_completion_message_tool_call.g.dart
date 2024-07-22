// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_message_tool_call.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChatCompletionMessageToolCallTypeEnum
    _$chatCompletionMessageToolCallTypeEnum_function_ =
    const ChatCompletionMessageToolCallTypeEnum._('function_');

ChatCompletionMessageToolCallTypeEnum
    _$chatCompletionMessageToolCallTypeEnumValueOf(String name) {
  switch (name) {
    case 'function_':
      return _$chatCompletionMessageToolCallTypeEnum_function_;
    default:
      return _$chatCompletionMessageToolCallTypeEnum_function_;
  }
}

final BuiltSet<ChatCompletionMessageToolCallTypeEnum>
    _$chatCompletionMessageToolCallTypeEnumValues = new BuiltSet<
        ChatCompletionMessageToolCallTypeEnum>(const <ChatCompletionMessageToolCallTypeEnum>[
  _$chatCompletionMessageToolCallTypeEnum_function_,
]);

Serializer<ChatCompletionMessageToolCallTypeEnum>
    _$chatCompletionMessageToolCallTypeEnumSerializer =
    new _$ChatCompletionMessageToolCallTypeEnumSerializer();

class _$ChatCompletionMessageToolCallTypeEnumSerializer
    implements PrimitiveSerializer<ChatCompletionMessageToolCallTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'function_': 'function',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'function': 'function_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChatCompletionMessageToolCallTypeEnum
  ];
  @override
  final String wireName = 'ChatCompletionMessageToolCallTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ChatCompletionMessageToolCallTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChatCompletionMessageToolCallTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChatCompletionMessageToolCallTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChatCompletionMessageToolCall extends ChatCompletionMessageToolCall {
  @override
  final String id;
  @override
  final ChatCompletionMessageToolCallTypeEnum type;
  @override
  final ChatCompletionMessageToolCallFunction function_;

  factory _$ChatCompletionMessageToolCall(
          [void Function(ChatCompletionMessageToolCallBuilder)? updates]) =>
      (new ChatCompletionMessageToolCallBuilder()..update(updates))._build();

  _$ChatCompletionMessageToolCall._(
      {required this.id, required this.type, required this.function_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'ChatCompletionMessageToolCall', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, r'ChatCompletionMessageToolCall', 'type');
    BuiltValueNullFieldError.checkNotNull(
        function_, r'ChatCompletionMessageToolCall', 'function_');
  }

  @override
  ChatCompletionMessageToolCall rebuild(
          void Function(ChatCompletionMessageToolCallBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatCompletionMessageToolCallBuilder toBuilder() =>
      new ChatCompletionMessageToolCallBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatCompletionMessageToolCall &&
        id == other.id &&
        type == other.type &&
        function_ == other.function_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, function_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatCompletionMessageToolCall')
          ..add('id', id)
          ..add('type', type)
          ..add('function_', function_))
        .toString();
  }
}

class ChatCompletionMessageToolCallBuilder
    implements
        Builder<ChatCompletionMessageToolCall,
            ChatCompletionMessageToolCallBuilder> {
  _$ChatCompletionMessageToolCall? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ChatCompletionMessageToolCallTypeEnum? _type;
  ChatCompletionMessageToolCallTypeEnum? get type => _$this._type;
  set type(ChatCompletionMessageToolCallTypeEnum? type) => _$this._type = type;

  ChatCompletionMessageToolCallFunctionBuilder? _function_;
  ChatCompletionMessageToolCallFunctionBuilder get function_ =>
      _$this._function_ ??= new ChatCompletionMessageToolCallFunctionBuilder();
  set function_(ChatCompletionMessageToolCallFunctionBuilder? function_) =>
      _$this._function_ = function_;

  ChatCompletionMessageToolCallBuilder() {
    ChatCompletionMessageToolCall._defaults(this);
  }

  ChatCompletionMessageToolCallBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _function_ = $v.function_.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatCompletionMessageToolCall other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatCompletionMessageToolCall;
  }

  @override
  void update(void Function(ChatCompletionMessageToolCallBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatCompletionMessageToolCall build() => _build();

  _$ChatCompletionMessageToolCall _build() {
    _$ChatCompletionMessageToolCall _$result;
    try {
      _$result = _$v ??
          new _$ChatCompletionMessageToolCall._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'ChatCompletionMessageToolCall', 'id'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'ChatCompletionMessageToolCall', 'type'),
              function_: function_.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'function_';
        function_.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatCompletionMessageToolCall', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
