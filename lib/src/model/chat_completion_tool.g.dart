// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_tool.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChatCompletionToolTypeEnum _$chatCompletionToolTypeEnum_function_ =
    const ChatCompletionToolTypeEnum._('function_');

ChatCompletionToolTypeEnum _$chatCompletionToolTypeEnumValueOf(String name) {
  switch (name) {
    case 'function_':
      return _$chatCompletionToolTypeEnum_function_;
    default:
      return _$chatCompletionToolTypeEnum_function_;
  }
}

final BuiltSet<ChatCompletionToolTypeEnum> _$chatCompletionToolTypeEnumValues =
    new BuiltSet<ChatCompletionToolTypeEnum>(const <ChatCompletionToolTypeEnum>[
  _$chatCompletionToolTypeEnum_function_,
]);

Serializer<ChatCompletionToolTypeEnum> _$chatCompletionToolTypeEnumSerializer =
    new _$ChatCompletionToolTypeEnumSerializer();

class _$ChatCompletionToolTypeEnumSerializer
    implements PrimitiveSerializer<ChatCompletionToolTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'function_': 'function',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'function': 'function_',
  };

  @override
  final Iterable<Type> types = const <Type>[ChatCompletionToolTypeEnum];
  @override
  final String wireName = 'ChatCompletionToolTypeEnum';

  @override
  Object serialize(Serializers serializers, ChatCompletionToolTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChatCompletionToolTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChatCompletionToolTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChatCompletionTool extends ChatCompletionTool {
  @override
  final ChatCompletionToolTypeEnum type;
  @override
  final FunctionObject function_;

  factory _$ChatCompletionTool(
          [void Function(ChatCompletionToolBuilder)? updates]) =>
      (new ChatCompletionToolBuilder()..update(updates))._build();

  _$ChatCompletionTool._({required this.type, required this.function_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, r'ChatCompletionTool', 'type');
    BuiltValueNullFieldError.checkNotNull(
        function_, r'ChatCompletionTool', 'function_');
  }

  @override
  ChatCompletionTool rebuild(
          void Function(ChatCompletionToolBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatCompletionToolBuilder toBuilder() =>
      new ChatCompletionToolBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatCompletionTool &&
        type == other.type &&
        function_ == other.function_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, function_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatCompletionTool')
          ..add('type', type)
          ..add('function_', function_))
        .toString();
  }
}

class ChatCompletionToolBuilder
    implements Builder<ChatCompletionTool, ChatCompletionToolBuilder> {
  _$ChatCompletionTool? _$v;

  ChatCompletionToolTypeEnum? _type;
  ChatCompletionToolTypeEnum? get type => _$this._type;
  set type(ChatCompletionToolTypeEnum? type) => _$this._type = type;

  FunctionObjectBuilder? _function_;
  FunctionObjectBuilder get function_ =>
      _$this._function_ ??= new FunctionObjectBuilder();
  set function_(FunctionObjectBuilder? function_) =>
      _$this._function_ = function_;

  ChatCompletionToolBuilder() {
    ChatCompletionTool._defaults(this);
  }

  ChatCompletionToolBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _function_ = $v.function_.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatCompletionTool other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatCompletionTool;
  }

  @override
  void update(void Function(ChatCompletionToolBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatCompletionTool build() => _build();

  _$ChatCompletionTool _build() {
    _$ChatCompletionTool _$result;
    try {
      _$result = _$v ??
          new _$ChatCompletionTool._(
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'ChatCompletionTool', 'type'),
              function_: function_.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'function_';
        function_.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatCompletionTool', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
