// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_response2004.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineResponse2004FinishReasonEnum
    _$inlineResponse2004FinishReasonEnum_CONTENT_FILTERED =
    const InlineResponse2004FinishReasonEnum._('CONTENT_FILTERED');
const InlineResponse2004FinishReasonEnum
    _$inlineResponse2004FinishReasonEnum_SUCCESS =
    const InlineResponse2004FinishReasonEnum._('SUCCESS');

InlineResponse2004FinishReasonEnum _$inlineResponse2004FinishReasonEnumValueOf(
    String name) {
  switch (name) {
    case 'CONTENT_FILTERED':
      return _$inlineResponse2004FinishReasonEnum_CONTENT_FILTERED;
    case 'SUCCESS':
      return _$inlineResponse2004FinishReasonEnum_SUCCESS;
    default:
      return _$inlineResponse2004FinishReasonEnum_SUCCESS;
  }
}

final BuiltSet<InlineResponse2004FinishReasonEnum>
    _$inlineResponse2004FinishReasonEnumValues = new BuiltSet<
        InlineResponse2004FinishReasonEnum>(const <InlineResponse2004FinishReasonEnum>[
  _$inlineResponse2004FinishReasonEnum_CONTENT_FILTERED,
  _$inlineResponse2004FinishReasonEnum_SUCCESS,
]);

Serializer<InlineResponse2004FinishReasonEnum>
    _$inlineResponse2004FinishReasonEnumSerializer =
    new _$InlineResponse2004FinishReasonEnumSerializer();

class _$InlineResponse2004FinishReasonEnumSerializer
    implements PrimitiveSerializer<InlineResponse2004FinishReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CONTENT_FILTERED': 'CONTENT_FILTERED',
    'SUCCESS': 'SUCCESS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CONTENT_FILTERED': 'CONTENT_FILTERED',
    'SUCCESS': 'SUCCESS',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineResponse2004FinishReasonEnum];
  @override
  final String wireName = 'InlineResponse2004FinishReasonEnum';

  @override
  Object serialize(
          Serializers serializers, InlineResponse2004FinishReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineResponse2004FinishReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineResponse2004FinishReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InlineResponse2004 extends InlineResponse2004 {
  @override
  final String image;
  @override
  final InlineResponse2004FinishReasonEnum finishReason;
  @override
  final num? seed;

  factory _$InlineResponse2004(
          [void Function(InlineResponse2004Builder)? updates]) =>
      (new InlineResponse2004Builder()..update(updates))._build();

  _$InlineResponse2004._(
      {required this.image, required this.finishReason, this.seed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        image, r'InlineResponse2004', 'image');
    BuiltValueNullFieldError.checkNotNull(
        finishReason, r'InlineResponse2004', 'finishReason');
  }

  @override
  InlineResponse2004 rebuild(
          void Function(InlineResponse2004Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2004Builder toBuilder() =>
      new InlineResponse2004Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2004 &&
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
    return (newBuiltValueToStringHelper(r'InlineResponse2004')
          ..add('image', image)
          ..add('finishReason', finishReason)
          ..add('seed', seed))
        .toString();
  }
}

class InlineResponse2004Builder
    implements Builder<InlineResponse2004, InlineResponse2004Builder> {
  _$InlineResponse2004? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  InlineResponse2004FinishReasonEnum? _finishReason;
  InlineResponse2004FinishReasonEnum? get finishReason => _$this._finishReason;
  set finishReason(InlineResponse2004FinishReasonEnum? finishReason) =>
      _$this._finishReason = finishReason;

  num? _seed;
  num? get seed => _$this._seed;
  set seed(num? seed) => _$this._seed = seed;

  InlineResponse2004Builder() {
    InlineResponse2004._defaults(this);
  }

  InlineResponse2004Builder get _$this {
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
  void replace(InlineResponse2004 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineResponse2004;
  }

  @override
  void update(void Function(InlineResponse2004Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineResponse2004 build() => _build();

  _$InlineResponse2004 _build() {
    final _$result = _$v ??
        new _$InlineResponse2004._(
            image: BuiltValueNullFieldError.checkNotNull(
                image, r'InlineResponse2004', 'image'),
            finishReason: BuiltValueNullFieldError.checkNotNull(
                finishReason, r'InlineResponse2004', 'finishReason'),
            seed: seed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
