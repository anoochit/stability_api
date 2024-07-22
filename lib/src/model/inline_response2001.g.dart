// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_response2001.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineResponse2001FinishReasonEnum
    _$inlineResponse2001FinishReasonEnum_SUCCESS =
    const InlineResponse2001FinishReasonEnum._('SUCCESS');
const InlineResponse2001FinishReasonEnum
    _$inlineResponse2001FinishReasonEnum_CONTENT_FILTERED =
    const InlineResponse2001FinishReasonEnum._('CONTENT_FILTERED');

InlineResponse2001FinishReasonEnum _$inlineResponse2001FinishReasonEnumValueOf(
    String name) {
  switch (name) {
    case 'SUCCESS':
      return _$inlineResponse2001FinishReasonEnum_SUCCESS;
    case 'CONTENT_FILTERED':
      return _$inlineResponse2001FinishReasonEnum_CONTENT_FILTERED;
    default:
      return _$inlineResponse2001FinishReasonEnum_CONTENT_FILTERED;
  }
}

final BuiltSet<InlineResponse2001FinishReasonEnum>
    _$inlineResponse2001FinishReasonEnumValues = new BuiltSet<
        InlineResponse2001FinishReasonEnum>(const <InlineResponse2001FinishReasonEnum>[
  _$inlineResponse2001FinishReasonEnum_SUCCESS,
  _$inlineResponse2001FinishReasonEnum_CONTENT_FILTERED,
]);

Serializer<InlineResponse2001FinishReasonEnum>
    _$inlineResponse2001FinishReasonEnumSerializer =
    new _$InlineResponse2001FinishReasonEnumSerializer();

class _$InlineResponse2001FinishReasonEnumSerializer
    implements PrimitiveSerializer<InlineResponse2001FinishReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SUCCESS': 'SUCCESS',
    'CONTENT_FILTERED': 'CONTENT_FILTERED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SUCCESS': 'SUCCESS',
    'CONTENT_FILTERED': 'CONTENT_FILTERED',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineResponse2001FinishReasonEnum];
  @override
  final String wireName = 'InlineResponse2001FinishReasonEnum';

  @override
  Object serialize(
          Serializers serializers, InlineResponse2001FinishReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineResponse2001FinishReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineResponse2001FinishReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InlineResponse2001 extends InlineResponse2001 {
  @override
  final String video;
  @override
  final InlineResponse2001FinishReasonEnum finishReason;
  @override
  final num? seed;

  factory _$InlineResponse2001(
          [void Function(InlineResponse2001Builder)? updates]) =>
      (new InlineResponse2001Builder()..update(updates))._build();

  _$InlineResponse2001._(
      {required this.video, required this.finishReason, this.seed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        video, r'InlineResponse2001', 'video');
    BuiltValueNullFieldError.checkNotNull(
        finishReason, r'InlineResponse2001', 'finishReason');
  }

  @override
  InlineResponse2001 rebuild(
          void Function(InlineResponse2001Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2001Builder toBuilder() =>
      new InlineResponse2001Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2001 &&
        video == other.video &&
        finishReason == other.finishReason &&
        seed == other.seed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, video.hashCode);
    _$hash = $jc(_$hash, finishReason.hashCode);
    _$hash = $jc(_$hash, seed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InlineResponse2001')
          ..add('video', video)
          ..add('finishReason', finishReason)
          ..add('seed', seed))
        .toString();
  }
}

class InlineResponse2001Builder
    implements Builder<InlineResponse2001, InlineResponse2001Builder> {
  _$InlineResponse2001? _$v;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  InlineResponse2001FinishReasonEnum? _finishReason;
  InlineResponse2001FinishReasonEnum? get finishReason => _$this._finishReason;
  set finishReason(InlineResponse2001FinishReasonEnum? finishReason) =>
      _$this._finishReason = finishReason;

  num? _seed;
  num? get seed => _$this._seed;
  set seed(num? seed) => _$this._seed = seed;

  InlineResponse2001Builder() {
    InlineResponse2001._defaults(this);
  }

  InlineResponse2001Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _video = $v.video;
      _finishReason = $v.finishReason;
      _seed = $v.seed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse2001 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineResponse2001;
  }

  @override
  void update(void Function(InlineResponse2001Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineResponse2001 build() => _build();

  _$InlineResponse2001 _build() {
    final _$result = _$v ??
        new _$InlineResponse2001._(
            video: BuiltValueNullFieldError.checkNotNull(
                video, r'InlineResponse2001', 'video'),
            finishReason: BuiltValueNullFieldError.checkNotNull(
                finishReason, r'InlineResponse2001', 'finishReason'),
            seed: seed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
