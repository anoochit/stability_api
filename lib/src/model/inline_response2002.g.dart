// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_response2002.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineResponse2002FinishReasonEnum
    _$inlineResponse2002FinishReasonEnum_SUCCESS =
    const InlineResponse2002FinishReasonEnum._('SUCCESS');
const InlineResponse2002FinishReasonEnum
    _$inlineResponse2002FinishReasonEnum_CONTENT_FILTERED =
    const InlineResponse2002FinishReasonEnum._('CONTENT_FILTERED');

InlineResponse2002FinishReasonEnum _$inlineResponse2002FinishReasonEnumValueOf(
    String name) {
  switch (name) {
    case 'SUCCESS':
      return _$inlineResponse2002FinishReasonEnum_SUCCESS;
    case 'CONTENT_FILTERED':
      return _$inlineResponse2002FinishReasonEnum_CONTENT_FILTERED;
    default:
      return _$inlineResponse2002FinishReasonEnum_CONTENT_FILTERED;
  }
}

final BuiltSet<InlineResponse2002FinishReasonEnum>
    _$inlineResponse2002FinishReasonEnumValues = new BuiltSet<
        InlineResponse2002FinishReasonEnum>(const <InlineResponse2002FinishReasonEnum>[
  _$inlineResponse2002FinishReasonEnum_SUCCESS,
  _$inlineResponse2002FinishReasonEnum_CONTENT_FILTERED,
]);

Serializer<InlineResponse2002FinishReasonEnum>
    _$inlineResponse2002FinishReasonEnumSerializer =
    new _$InlineResponse2002FinishReasonEnumSerializer();

class _$InlineResponse2002FinishReasonEnumSerializer
    implements PrimitiveSerializer<InlineResponse2002FinishReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SUCCESS': 'SUCCESS',
    'CONTENT_FILTERED': 'CONTENT_FILTERED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SUCCESS': 'SUCCESS',
    'CONTENT_FILTERED': 'CONTENT_FILTERED',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineResponse2002FinishReasonEnum];
  @override
  final String wireName = 'InlineResponse2002FinishReasonEnum';

  @override
  Object serialize(
          Serializers serializers, InlineResponse2002FinishReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineResponse2002FinishReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineResponse2002FinishReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InlineResponse2002 extends InlineResponse2002 {
  @override
  final String image;
  @override
  final InlineResponse2002FinishReasonEnum finishReason;
  @override
  final num? seed;

  factory _$InlineResponse2002(
          [void Function(InlineResponse2002Builder)? updates]) =>
      (new InlineResponse2002Builder()..update(updates))._build();

  _$InlineResponse2002._(
      {required this.image, required this.finishReason, this.seed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        image, r'InlineResponse2002', 'image');
    BuiltValueNullFieldError.checkNotNull(
        finishReason, r'InlineResponse2002', 'finishReason');
  }

  @override
  InlineResponse2002 rebuild(
          void Function(InlineResponse2002Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2002Builder toBuilder() =>
      new InlineResponse2002Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2002 &&
        image == other.image &&
        finishReason == other.finishReason &&
        seed == other.seed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, finishReason.hashCode);
    _$hash = $jc(_$hash, seed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InlineResponse2002')
          ..add('image', image)
          ..add('finishReason', finishReason)
          ..add('seed', seed))
        .toString();
  }
}

class InlineResponse2002Builder
    implements Builder<InlineResponse2002, InlineResponse2002Builder> {
  _$InlineResponse2002? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  InlineResponse2002FinishReasonEnum? _finishReason;
  InlineResponse2002FinishReasonEnum? get finishReason => _$this._finishReason;
  set finishReason(InlineResponse2002FinishReasonEnum? finishReason) =>
      _$this._finishReason = finishReason;

  num? _seed;
  num? get seed => _$this._seed;
  set seed(num? seed) => _$this._seed = seed;

  InlineResponse2002Builder() {
    InlineResponse2002._defaults(this);
  }

  InlineResponse2002Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _finishReason = $v.finishReason;
      _seed = $v.seed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse2002 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineResponse2002;
  }

  @override
  void update(void Function(InlineResponse2002Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineResponse2002 build() => _build();

  _$InlineResponse2002 _build() {
    final _$result = _$v ??
        new _$InlineResponse2002._(
            image: BuiltValueNullFieldError.checkNotNull(
                image, r'InlineResponse2002', 'image'),
            finishReason: BuiltValueNullFieldError.checkNotNull(
                finishReason, r'InlineResponse2002', 'finishReason'),
            seed: seed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
