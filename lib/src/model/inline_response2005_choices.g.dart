// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_response2005_choices.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineResponse2005ChoicesFinishReasonEnum
    _$inlineResponse2005ChoicesFinishReasonEnum_stop =
    const InlineResponse2005ChoicesFinishReasonEnum._('stop');
const InlineResponse2005ChoicesFinishReasonEnum
    _$inlineResponse2005ChoicesFinishReasonEnum_length =
    const InlineResponse2005ChoicesFinishReasonEnum._('length');

InlineResponse2005ChoicesFinishReasonEnum
    _$inlineResponse2005ChoicesFinishReasonEnumValueOf(String name) {
  switch (name) {
    case 'stop':
      return _$inlineResponse2005ChoicesFinishReasonEnum_stop;
    case 'length':
      return _$inlineResponse2005ChoicesFinishReasonEnum_length;
    default:
      return _$inlineResponse2005ChoicesFinishReasonEnum_length;
  }
}

final BuiltSet<InlineResponse2005ChoicesFinishReasonEnum>
    _$inlineResponse2005ChoicesFinishReasonEnumValues = new BuiltSet<
        InlineResponse2005ChoicesFinishReasonEnum>(const <InlineResponse2005ChoicesFinishReasonEnum>[
  _$inlineResponse2005ChoicesFinishReasonEnum_stop,
  _$inlineResponse2005ChoicesFinishReasonEnum_length,
]);

Serializer<InlineResponse2005ChoicesFinishReasonEnum>
    _$inlineResponse2005ChoicesFinishReasonEnumSerializer =
    new _$InlineResponse2005ChoicesFinishReasonEnumSerializer();

class _$InlineResponse2005ChoicesFinishReasonEnumSerializer
    implements PrimitiveSerializer<InlineResponse2005ChoicesFinishReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'stop': 'stop',
    'length': 'length',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'stop': 'stop',
    'length': 'length',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InlineResponse2005ChoicesFinishReasonEnum
  ];
  @override
  final String wireName = 'InlineResponse2005ChoicesFinishReasonEnum';

  @override
  Object serialize(Serializers serializers,
          InlineResponse2005ChoicesFinishReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineResponse2005ChoicesFinishReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineResponse2005ChoicesFinishReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InlineResponse2005Choices extends InlineResponse2005Choices {
  @override
  final int index;
  @override
  final ChatCompletionResponseMessage message;
  @override
  final InlineResponse2005ChoicesFinishReasonEnum finishReason;

  factory _$InlineResponse2005Choices(
          [void Function(InlineResponse2005ChoicesBuilder)? updates]) =>
      (new InlineResponse2005ChoicesBuilder()..update(updates))._build();

  _$InlineResponse2005Choices._(
      {required this.index, required this.message, required this.finishReason})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        index, r'InlineResponse2005Choices', 'index');
    BuiltValueNullFieldError.checkNotNull(
        message, r'InlineResponse2005Choices', 'message');
    BuiltValueNullFieldError.checkNotNull(
        finishReason, r'InlineResponse2005Choices', 'finishReason');
  }

  @override
  InlineResponse2005Choices rebuild(
          void Function(InlineResponse2005ChoicesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2005ChoicesBuilder toBuilder() =>
      new InlineResponse2005ChoicesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2005Choices &&
        index == other.index &&
        message == other.message &&
        finishReason == other.finishReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, finishReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InlineResponse2005Choices')
          ..add('index', index)
          ..add('message', message)
          ..add('finishReason', finishReason))
        .toString();
  }
}

class InlineResponse2005ChoicesBuilder
    implements
        Builder<InlineResponse2005Choices, InlineResponse2005ChoicesBuilder> {
  _$InlineResponse2005Choices? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  ChatCompletionResponseMessageBuilder? _message;
  ChatCompletionResponseMessageBuilder get message =>
      _$this._message ??= new ChatCompletionResponseMessageBuilder();
  set message(ChatCompletionResponseMessageBuilder? message) =>
      _$this._message = message;

  InlineResponse2005ChoicesFinishReasonEnum? _finishReason;
  InlineResponse2005ChoicesFinishReasonEnum? get finishReason =>
      _$this._finishReason;
  set finishReason(InlineResponse2005ChoicesFinishReasonEnum? finishReason) =>
      _$this._finishReason = finishReason;

  InlineResponse2005ChoicesBuilder() {
    InlineResponse2005Choices._defaults(this);
  }

  InlineResponse2005ChoicesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _message = $v.message.toBuilder();
      _finishReason = $v.finishReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse2005Choices other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineResponse2005Choices;
  }

  @override
  void update(void Function(InlineResponse2005ChoicesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineResponse2005Choices build() => _build();

  _$InlineResponse2005Choices _build() {
    _$InlineResponse2005Choices _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse2005Choices._(
              index: BuiltValueNullFieldError.checkNotNull(
                  index, r'InlineResponse2005Choices', 'index'),
              message: message.build(),
              finishReason: BuiltValueNullFieldError.checkNotNull(
                  finishReason, r'InlineResponse2005Choices', 'finishReason'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'message';
        message.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InlineResponse2005Choices', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
