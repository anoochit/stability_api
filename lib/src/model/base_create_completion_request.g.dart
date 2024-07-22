// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_create_completion_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BaseCreateCompletionRequestContextLengthExceededBehaviorEnum
    _$baseCreateCompletionRequestContextLengthExceededBehaviorEnum_truncate =
    const BaseCreateCompletionRequestContextLengthExceededBehaviorEnum._(
        'truncate');
const BaseCreateCompletionRequestContextLengthExceededBehaviorEnum
    _$baseCreateCompletionRequestContextLengthExceededBehaviorEnum_error =
    const BaseCreateCompletionRequestContextLengthExceededBehaviorEnum._(
        'error');

BaseCreateCompletionRequestContextLengthExceededBehaviorEnum
    _$baseCreateCompletionRequestContextLengthExceededBehaviorEnumValueOf(
        String name) {
  switch (name) {
    case 'truncate':
      return _$baseCreateCompletionRequestContextLengthExceededBehaviorEnum_truncate;
    case 'error':
      return _$baseCreateCompletionRequestContextLengthExceededBehaviorEnum_error;
    default:
      return _$baseCreateCompletionRequestContextLengthExceededBehaviorEnum_error;
  }
}

final BuiltSet<BaseCreateCompletionRequestContextLengthExceededBehaviorEnum>
    _$baseCreateCompletionRequestContextLengthExceededBehaviorEnumValues =
    new BuiltSet<
        BaseCreateCompletionRequestContextLengthExceededBehaviorEnum>(const <BaseCreateCompletionRequestContextLengthExceededBehaviorEnum>[
  _$baseCreateCompletionRequestContextLengthExceededBehaviorEnum_truncate,
  _$baseCreateCompletionRequestContextLengthExceededBehaviorEnum_error,
]);

Serializer<BaseCreateCompletionRequestContextLengthExceededBehaviorEnum>
    _$baseCreateCompletionRequestContextLengthExceededBehaviorEnumSerializer =
    new _$BaseCreateCompletionRequestContextLengthExceededBehaviorEnumSerializer();

class _$BaseCreateCompletionRequestContextLengthExceededBehaviorEnumSerializer
    implements
        PrimitiveSerializer<
            BaseCreateCompletionRequestContextLengthExceededBehaviorEnum> {
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
    BaseCreateCompletionRequestContextLengthExceededBehaviorEnum
  ];
  @override
  final String wireName =
      'BaseCreateCompletionRequestContextLengthExceededBehaviorEnum';

  @override
  Object serialize(Serializers serializers,
          BaseCreateCompletionRequestContextLengthExceededBehaviorEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BaseCreateCompletionRequestContextLengthExceededBehaviorEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BaseCreateCompletionRequestContextLengthExceededBehaviorEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

abstract class BaseCreateCompletionRequestBuilder {
  void replace(BaseCreateCompletionRequest other);
  void update(void Function(BaseCreateCompletionRequestBuilder) updates);
  num? get temperature;
  set temperature(num? temperature);

  num? get topP;
  set topP(num? topP);

  int? get topK;
  set topK(int? topK);

  num? get frequencyPenalty;
  set frequencyPenalty(num? frequencyPenalty);

  num? get presencePenalty;
  set presencePenalty(num? presencePenalty);

  int? get n;
  set n(int? n);

  BaseCreateCompletionRequestStopBuilder get stop;
  set stop(BaseCreateCompletionRequestStopBuilder? stop);

  BaseCreateCompletionRequestResponseFormatBuilder get responseFormat;
  set responseFormat(
      BaseCreateCompletionRequestResponseFormatBuilder? responseFormat);

  bool? get stream;
  set stream(bool? stream);

  BaseCreateCompletionRequestContextLengthExceededBehaviorEnum?
      get contextLengthExceededBehavior;
  set contextLengthExceededBehavior(
      BaseCreateCompletionRequestContextLengthExceededBehaviorEnum?
          contextLengthExceededBehavior);

  String? get user;
  set user(String? user);
}

class _$$BaseCreateCompletionRequest extends $BaseCreateCompletionRequest {
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

  factory _$$BaseCreateCompletionRequest(
          [void Function($BaseCreateCompletionRequestBuilder)? updates]) =>
      (new $BaseCreateCompletionRequestBuilder()..update(updates))._build();

  _$$BaseCreateCompletionRequest._(
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
      this.user})
      : super._();

  @override
  $BaseCreateCompletionRequest rebuild(
          void Function($BaseCreateCompletionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $BaseCreateCompletionRequestBuilder toBuilder() =>
      new $BaseCreateCompletionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $BaseCreateCompletionRequest &&
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
        user == other.user;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$BaseCreateCompletionRequest')
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
          ..add('user', user))
        .toString();
  }
}

class $BaseCreateCompletionRequestBuilder
    implements
        Builder<$BaseCreateCompletionRequest,
            $BaseCreateCompletionRequestBuilder>,
        BaseCreateCompletionRequestBuilder {
  _$$BaseCreateCompletionRequest? _$v;

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

  $BaseCreateCompletionRequestBuilder() {
    $BaseCreateCompletionRequest._defaults(this);
  }

  $BaseCreateCompletionRequestBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $BaseCreateCompletionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$BaseCreateCompletionRequest;
  }

  @override
  void update(void Function($BaseCreateCompletionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $BaseCreateCompletionRequest build() => _build();

  _$$BaseCreateCompletionRequest _build() {
    _$$BaseCreateCompletionRequest _$result;
    try {
      _$result = _$v ??
          new _$$BaseCreateCompletionRequest._(
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
              user: user);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stop';
        _stop?.build();
        _$failedField = 'responseFormat';
        _responseFormat?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$BaseCreateCompletionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
