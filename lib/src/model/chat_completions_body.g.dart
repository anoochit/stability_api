// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completions_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChatCompletionsBodyModelEnum _$chatCompletionsBodyModelEnum_n12b =
    const ChatCompletionsBodyModelEnum._('n12b');
const ChatCompletionsBodyModelEnum _$chatCompletionsBodyModelEnum_zephyr2b =
    const ChatCompletionsBodyModelEnum._('zephyr2b');

ChatCompletionsBodyModelEnum _$chatCompletionsBodyModelEnumValueOf(
    String name) {
  switch (name) {
    case 'n12b':
      return _$chatCompletionsBodyModelEnum_n12b;
    case 'zephyr2b':
      return _$chatCompletionsBodyModelEnum_zephyr2b;
    default:
      return _$chatCompletionsBodyModelEnum_zephyr2b;
  }
}

final BuiltSet<ChatCompletionsBodyModelEnum>
    _$chatCompletionsBodyModelEnumValues = new BuiltSet<
        ChatCompletionsBodyModelEnum>(const <ChatCompletionsBodyModelEnum>[
  _$chatCompletionsBodyModelEnum_n12b,
  _$chatCompletionsBodyModelEnum_zephyr2b,
]);

const ChatCompletionsBodyContextLengthExceededBehaviorEnum
    _$chatCompletionsBodyContextLengthExceededBehaviorEnum_truncate =
    const ChatCompletionsBodyContextLengthExceededBehaviorEnum._('truncate');
const ChatCompletionsBodyContextLengthExceededBehaviorEnum
    _$chatCompletionsBodyContextLengthExceededBehaviorEnum_error =
    const ChatCompletionsBodyContextLengthExceededBehaviorEnum._('error');

ChatCompletionsBodyContextLengthExceededBehaviorEnum
    _$chatCompletionsBodyContextLengthExceededBehaviorEnumValueOf(String name) {
  switch (name) {
    case 'truncate':
      return _$chatCompletionsBodyContextLengthExceededBehaviorEnum_truncate;
    case 'error':
      return _$chatCompletionsBodyContextLengthExceededBehaviorEnum_error;
    default:
      return _$chatCompletionsBodyContextLengthExceededBehaviorEnum_error;
  }
}

final BuiltSet<ChatCompletionsBodyContextLengthExceededBehaviorEnum>
    _$chatCompletionsBodyContextLengthExceededBehaviorEnumValues = new BuiltSet<
        ChatCompletionsBodyContextLengthExceededBehaviorEnum>(const <ChatCompletionsBodyContextLengthExceededBehaviorEnum>[
  _$chatCompletionsBodyContextLengthExceededBehaviorEnum_truncate,
  _$chatCompletionsBodyContextLengthExceededBehaviorEnum_error,
]);

Serializer<ChatCompletionsBodyModelEnum>
    _$chatCompletionsBodyModelEnumSerializer =
    new _$ChatCompletionsBodyModelEnumSerializer();
Serializer<ChatCompletionsBodyContextLengthExceededBehaviorEnum>
    _$chatCompletionsBodyContextLengthExceededBehaviorEnumSerializer =
    new _$ChatCompletionsBodyContextLengthExceededBehaviorEnumSerializer();

class _$ChatCompletionsBodyModelEnumSerializer
    implements PrimitiveSerializer<ChatCompletionsBodyModelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n12b': 'stablelm-2-12b',
    'zephyr2b': 'stablelm-2-zephyr-2b',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'stablelm-2-12b': 'n12b',
    'stablelm-2-zephyr-2b': 'zephyr2b',
  };

  @override
  final Iterable<Type> types = const <Type>[ChatCompletionsBodyModelEnum];
  @override
  final String wireName = 'ChatCompletionsBodyModelEnum';

  @override
  Object serialize(Serializers serializers, ChatCompletionsBodyModelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChatCompletionsBodyModelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChatCompletionsBodyModelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChatCompletionsBodyContextLengthExceededBehaviorEnumSerializer
    implements
        PrimitiveSerializer<
            ChatCompletionsBodyContextLengthExceededBehaviorEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'truncate': 'truncate',
    'error': 'error',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'truncate': 'truncate',
    'error': 'error',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChatCompletionsBodyContextLengthExceededBehaviorEnum
  ];
  @override
  final String wireName =
      'ChatCompletionsBodyContextLengthExceededBehaviorEnum';

  @override
  Object serialize(Serializers serializers,
          ChatCompletionsBodyContextLengthExceededBehaviorEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChatCompletionsBodyContextLengthExceededBehaviorEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChatCompletionsBodyContextLengthExceededBehaviorEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChatCompletionsBody extends ChatCompletionsBody {
  @override
  final num? temperature;
  @override
  final num? topP;
  @override
  final int? topK;
  @override
  final num? frequencyPenalty;
  @override
  final num? presencePenalty;
  @override
  final int? n;
  @override
  final BaseCreateCompletionRequestStop? stop;
  @override
  final BaseCreateCompletionRequestResponseFormat? responseFormat;
  @override
  final bool? stream;
  @override
  final BaseCreateCompletionRequestContextLengthExceededBehaviorEnum?
      contextLengthExceededBehavior;
  @override
  final String? user;
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

  factory _$ChatCompletionsBody(
          [void Function(ChatCompletionsBodyBuilder)? updates]) =>
      (new ChatCompletionsBodyBuilder()..update(updates))._build();

  _$ChatCompletionsBody._(
      {this.temperature,
      this.topP,
      this.topK,
      this.frequencyPenalty,
      this.presencePenalty,
      this.n,
      this.stop,
      this.responseFormat,
      this.stream,
      this.contextLengthExceededBehavior,
      this.user,
      required this.model,
      required this.messages,
      this.tools,
      this.maxTokens,
      this.promptTruncateLen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        model, r'ChatCompletionsBody', 'model');
    BuiltValueNullFieldError.checkNotNull(
        messages, r'ChatCompletionsBody', 'messages');
  }

  @override
  ChatCompletionsBody rebuild(
          void Function(ChatCompletionsBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatCompletionsBodyBuilder toBuilder() =>
      new ChatCompletionsBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatCompletionsBody &&
        temperature == other.temperature &&
        topP == other.topP &&
        topK == other.topK &&
        frequencyPenalty == other.frequencyPenalty &&
        presencePenalty == other.presencePenalty &&
        n == other.n &&
        stop == other.stop &&
        responseFormat == other.responseFormat &&
        stream == other.stream &&
        contextLengthExceededBehavior == other.contextLengthExceededBehavior &&
        user == other.user &&
        model == other.model &&
        messages == other.messages &&
        tools == other.tools &&
        maxTokens == other.maxTokens &&
        promptTruncateLen == other.promptTruncateLen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, temperature.hashCode);
    _$hash = $jc(_$hash, topP.hashCode);
    _$hash = $jc(_$hash, topK.hashCode);
    _$hash = $jc(_$hash, frequencyPenalty.hashCode);
    _$hash = $jc(_$hash, presencePenalty.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, stop.hashCode);
    _$hash = $jc(_$hash, responseFormat.hashCode);
    _$hash = $jc(_$hash, stream.hashCode);
    _$hash = $jc(_$hash, contextLengthExceededBehavior.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
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
    return (newBuiltValueToStringHelper(r'ChatCompletionsBody')
          ..add('temperature', temperature)
          ..add('topP', topP)
          ..add('topK', topK)
          ..add('frequencyPenalty', frequencyPenalty)
          ..add('presencePenalty', presencePenalty)
          ..add('n', n)
          ..add('stop', stop)
          ..add('responseFormat', responseFormat)
          ..add('stream', stream)
          ..add('contextLengthExceededBehavior', contextLengthExceededBehavior)
          ..add('user', user)
          ..add('model', model)
          ..add('messages', messages)
          ..add('tools', tools)
          ..add('maxTokens', maxTokens)
          ..add('promptTruncateLen', promptTruncateLen))
        .toString();
  }
}

class ChatCompletionsBodyBuilder
    implements
        Builder<ChatCompletionsBody, ChatCompletionsBodyBuilder>,
        BaseCreateCompletionRequestBuilder,
        CreateChatCompletionExclusiveFieldsBuilder {
  _$ChatCompletionsBody? _$v;

  num? _temperature;
  num? get temperature => _$this._temperature;
  set temperature(covariant num? temperature) =>
      _$this._temperature = temperature;

  num? _topP;
  num? get topP => _$this._topP;
  set topP(covariant num? topP) => _$this._topP = topP;

  int? _topK;
  int? get topK => _$this._topK;
  set topK(covariant int? topK) => _$this._topK = topK;

  num? _frequencyPenalty;
  num? get frequencyPenalty => _$this._frequencyPenalty;
  set frequencyPenalty(covariant num? frequencyPenalty) =>
      _$this._frequencyPenalty = frequencyPenalty;

  num? _presencePenalty;
  num? get presencePenalty => _$this._presencePenalty;
  set presencePenalty(covariant num? presencePenalty) =>
      _$this._presencePenalty = presencePenalty;

  int? _n;
  int? get n => _$this._n;
  set n(covariant int? n) => _$this._n = n;

  BaseCreateCompletionRequestStopBuilder? _stop;
  BaseCreateCompletionRequestStopBuilder get stop =>
      _$this._stop ??= new BaseCreateCompletionRequestStopBuilder();
  set stop(covariant BaseCreateCompletionRequestStopBuilder? stop) =>
      _$this._stop = stop;

  BaseCreateCompletionRequestResponseFormatBuilder? _responseFormat;
  BaseCreateCompletionRequestResponseFormatBuilder get responseFormat =>
      _$this._responseFormat ??=
          new BaseCreateCompletionRequestResponseFormatBuilder();
  set responseFormat(
          covariant BaseCreateCompletionRequestResponseFormatBuilder?
              responseFormat) =>
      _$this._responseFormat = responseFormat;

  bool? _stream;
  bool? get stream => _$this._stream;
  set stream(covariant bool? stream) => _$this._stream = stream;

  BaseCreateCompletionRequestContextLengthExceededBehaviorEnum?
      _contextLengthExceededBehavior;
  BaseCreateCompletionRequestContextLengthExceededBehaviorEnum?
      get contextLengthExceededBehavior =>
          _$this._contextLengthExceededBehavior;
  set contextLengthExceededBehavior(
          covariant BaseCreateCompletionRequestContextLengthExceededBehaviorEnum?
              contextLengthExceededBehavior) =>
      _$this._contextLengthExceededBehavior = contextLengthExceededBehavior;

  String? _user;
  String? get user => _$this._user;
  set user(covariant String? user) => _$this._user = user;

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

  ChatCompletionsBodyBuilder() {
    ChatCompletionsBody._defaults(this);
  }

  ChatCompletionsBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temperature = $v.temperature;
      _topP = $v.topP;
      _topK = $v.topK;
      _frequencyPenalty = $v.frequencyPenalty;
      _presencePenalty = $v.presencePenalty;
      _n = $v.n;
      _stop = $v.stop?.toBuilder();
      _responseFormat = $v.responseFormat?.toBuilder();
      _stream = $v.stream;
      _contextLengthExceededBehavior = $v.contextLengthExceededBehavior;
      _user = $v.user;
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
// ignore: override_on_non_overriding_method
  void replace(covariant ChatCompletionsBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatCompletionsBody;
  }

  @override
  void update(void Function(ChatCompletionsBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatCompletionsBody build() => _build();

  _$ChatCompletionsBody _build() {
    _$ChatCompletionsBody _$result;
    try {
      _$result = _$v ??
          new _$ChatCompletionsBody._(
              temperature: temperature,
              topP: topP,
              topK: topK,
              frequencyPenalty: frequencyPenalty,
              presencePenalty: presencePenalty,
              n: n,
              stop: _stop?.build(),
              responseFormat: _responseFormat?.build(),
              stream: stream,
              contextLengthExceededBehavior: contextLengthExceededBehavior,
              user: user,
              model: BuiltValueNullFieldError.checkNotNull(
                  model, r'ChatCompletionsBody', 'model'),
              messages: messages.build(),
              tools: _tools?.build(),
              maxTokens: maxTokens,
              promptTruncateLen: promptTruncateLen);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stop';
        _stop?.build();
        _$failedField = 'responseFormat';
        _responseFormat?.build();

        _$failedField = 'messages';
        messages.build();
        _$failedField = 'tools';
        _tools?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatCompletionsBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
