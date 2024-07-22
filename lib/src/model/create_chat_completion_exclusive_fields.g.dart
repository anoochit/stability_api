// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_chat_completion_exclusive_fields.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateChatCompletionExclusiveFieldsModelEnum
    _$createChatCompletionExclusiveFieldsModelEnum_n12b =
    const CreateChatCompletionExclusiveFieldsModelEnum._('n12b');
const CreateChatCompletionExclusiveFieldsModelEnum
    _$createChatCompletionExclusiveFieldsModelEnum_zephyr2b =
    const CreateChatCompletionExclusiveFieldsModelEnum._('zephyr2b');

CreateChatCompletionExclusiveFieldsModelEnum
    _$createChatCompletionExclusiveFieldsModelEnumValueOf(String name) {
  switch (name) {
    case 'n12b':
      return _$createChatCompletionExclusiveFieldsModelEnum_n12b;
    case 'zephyr2b':
      return _$createChatCompletionExclusiveFieldsModelEnum_zephyr2b;
    default:
      return _$createChatCompletionExclusiveFieldsModelEnum_zephyr2b;
  }
}

final BuiltSet<CreateChatCompletionExclusiveFieldsModelEnum>
    _$createChatCompletionExclusiveFieldsModelEnumValues = new BuiltSet<
        CreateChatCompletionExclusiveFieldsModelEnum>(const <CreateChatCompletionExclusiveFieldsModelEnum>[
  _$createChatCompletionExclusiveFieldsModelEnum_n12b,
  _$createChatCompletionExclusiveFieldsModelEnum_zephyr2b,
]);

Serializer<CreateChatCompletionExclusiveFieldsModelEnum>
    _$createChatCompletionExclusiveFieldsModelEnumSerializer =
    new _$CreateChatCompletionExclusiveFieldsModelEnumSerializer();

class _$CreateChatCompletionExclusiveFieldsModelEnumSerializer
    implements
        PrimitiveSerializer<CreateChatCompletionExclusiveFieldsModelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n12b': 'stablelm-2-12b',
    'zephyr2b': 'stablelm-2-zephyr-2b',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'stablelm-2-12b': 'n12b',
    'stablelm-2-zephyr-2b': 'zephyr2b',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateChatCompletionExclusiveFieldsModelEnum
  ];
  @override
  final String wireName = 'CreateChatCompletionExclusiveFieldsModelEnum';

  @override
  Object serialize(Serializers serializers,
          CreateChatCompletionExclusiveFieldsModelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateChatCompletionExclusiveFieldsModelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateChatCompletionExclusiveFieldsModelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

abstract class CreateChatCompletionExclusiveFieldsBuilder {
  void replace(CreateChatCompletionExclusiveFields other);
  void update(
      void Function(CreateChatCompletionExclusiveFieldsBuilder) updates);
  CreateChatCompletionExclusiveFieldsModelEnum? get model;
  set model(CreateChatCompletionExclusiveFieldsModelEnum? model);

  ListBuilder<ChatCompletionRequestMessage> get messages;
  set messages(ListBuilder<ChatCompletionRequestMessage>? messages);

  ListBuilder<ChatCompletionTool> get tools;
  set tools(ListBuilder<ChatCompletionTool>? tools);

  int? get maxTokens;
  set maxTokens(int? maxTokens);

  int? get promptTruncateLen;
  set promptTruncateLen(int? promptTruncateLen);
}

class _$$CreateChatCompletionExclusiveFields
    extends $CreateChatCompletionExclusiveFields {
  @override
  final CreateChatCompletionExclusiveFieldsModelEnum model;
  @override
  final BuiltList<ChatCompletionRequestMessage> messages;
  @override
  final BuiltList<ChatCompletionTool>? tools;
  @override
  final int? maxTokens;
  @override
  final int? promptTruncateLen;

  factory _$$CreateChatCompletionExclusiveFields(
          [void Function($CreateChatCompletionExclusiveFieldsBuilder)?
              updates]) =>
      (new $CreateChatCompletionExclusiveFieldsBuilder()..update(updates))
          ._build();

  _$$CreateChatCompletionExclusiveFields._(
      {required this.model,
      required this.messages,
      this.tools,
      this.maxTokens,
      this.promptTruncateLen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        model, r'$CreateChatCompletionExclusiveFields', 'model');
    BuiltValueNullFieldError.checkNotNull(
        messages, r'$CreateChatCompletionExclusiveFields', 'messages');
  }

  @override
  $CreateChatCompletionExclusiveFields rebuild(
          void Function($CreateChatCompletionExclusiveFieldsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $CreateChatCompletionExclusiveFieldsBuilder toBuilder() =>
      new $CreateChatCompletionExclusiveFieldsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $CreateChatCompletionExclusiveFields &&
        model == other.model &&
        messages == other.messages &&
        tools == other.tools &&
        maxTokens == other.maxTokens &&
        promptTruncateLen == other.promptTruncateLen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jc(_$hash, tools.hashCode);
    _$hash = $jc(_$hash, maxTokens.hashCode);
    _$hash = $jc(_$hash, promptTruncateLen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$CreateChatCompletionExclusiveFields')
          ..add('model', model)
          ..add('messages', messages)
          ..add('tools', tools)
          ..add('maxTokens', maxTokens)
          ..add('promptTruncateLen', promptTruncateLen))
        .toString();
  }
}

class $CreateChatCompletionExclusiveFieldsBuilder
    implements
        Builder<$CreateChatCompletionExclusiveFields,
            $CreateChatCompletionExclusiveFieldsBuilder>,
        CreateChatCompletionExclusiveFieldsBuilder {
  _$$CreateChatCompletionExclusiveFields? _$v;

  CreateChatCompletionExclusiveFieldsModelEnum? _model;
  CreateChatCompletionExclusiveFieldsModelEnum? get model => _$this._model;
  set model(covariant CreateChatCompletionExclusiveFieldsModelEnum? model) =>
      _$this._model = model;

  ListBuilder<ChatCompletionRequestMessage>? _messages;
  ListBuilder<ChatCompletionRequestMessage> get messages =>
      _$this._messages ??= new ListBuilder<ChatCompletionRequestMessage>();
  set messages(covariant ListBuilder<ChatCompletionRequestMessage>? messages) =>
      _$this._messages = messages;

  ListBuilder<ChatCompletionTool>? _tools;
  ListBuilder<ChatCompletionTool> get tools =>
      _$this._tools ??= new ListBuilder<ChatCompletionTool>();
  set tools(covariant ListBuilder<ChatCompletionTool>? tools) =>
      _$this._tools = tools;

  int? _maxTokens;
  int? get maxTokens => _$this._maxTokens;
  set maxTokens(covariant int? maxTokens) => _$this._maxTokens = maxTokens;

  int? _promptTruncateLen;
  int? get promptTruncateLen => _$this._promptTruncateLen;
  set promptTruncateLen(covariant int? promptTruncateLen) =>
      _$this._promptTruncateLen = promptTruncateLen;

  $CreateChatCompletionExclusiveFieldsBuilder() {
    $CreateChatCompletionExclusiveFields._defaults(this);
  }

  $CreateChatCompletionExclusiveFieldsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _model = $v.model;
      _messages = $v.messages.toBuilder();
      _tools = $v.tools?.toBuilder();
      _maxTokens = $v.maxTokens;
      _promptTruncateLen = $v.promptTruncateLen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $CreateChatCompletionExclusiveFields other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$CreateChatCompletionExclusiveFields;
  }

  @override
  void update(
      void Function($CreateChatCompletionExclusiveFieldsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $CreateChatCompletionExclusiveFields build() => _build();

  _$$CreateChatCompletionExclusiveFields _build() {
    _$$CreateChatCompletionExclusiveFields _$result;
    try {
      _$result = _$v ??
          new _$$CreateChatCompletionExclusiveFields._(
              model: BuiltValueNullFieldError.checkNotNull(
                  model, r'$CreateChatCompletionExclusiveFields', 'model'),
              messages: messages.build(),
              tools: _tools?.build(),
              maxTokens: maxTokens,
              promptTruncateLen: promptTruncateLen);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        messages.build();
        _$failedField = 'tools';
        _tools?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$CreateChatCompletionExclusiveFields',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
