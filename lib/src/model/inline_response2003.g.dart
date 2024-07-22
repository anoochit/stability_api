// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_response2003.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineResponse2003FinishReasonEnum
    _$inlineResponse2003FinishReasonEnum_CONTENT_FILTERED =
    const InlineResponse2003FinishReasonEnum._('CONTENT_FILTERED');
const InlineResponse2003FinishReasonEnum
    _$inlineResponse2003FinishReasonEnum_SUCCESS =
    const InlineResponse2003FinishReasonEnum._('SUCCESS');

InlineResponse2003FinishReasonEnum _$inlineResponse2003FinishReasonEnumValueOf(
    String name) {
  switch (name) {
    case 'CONTENT_FILTERED':
      return _$inlineResponse2003FinishReasonEnum_CONTENT_FILTERED;
    case 'SUCCESS':
      return _$inlineResponse2003FinishReasonEnum_SUCCESS;
    default:
      return _$inlineResponse2003FinishReasonEnum_SUCCESS;
  }
}

final BuiltSet<InlineResponse2003FinishReasonEnum>
    _$inlineResponse2003FinishReasonEnumValues = new BuiltSet<
        InlineResponse2003FinishReasonEnum>(const <InlineResponse2003FinishReasonEnum>[
  _$inlineResponse2003FinishReasonEnum_CONTENT_FILTERED,
  _$inlineResponse2003FinishReasonEnum_SUCCESS,
]);

Serializer<InlineResponse2003FinishReasonEnum>
    _$inlineResponse2003FinishReasonEnumSerializer =
    new _$InlineResponse2003FinishReasonEnumSerializer();

class _$InlineResponse2003FinishReasonEnumSerializer
    implements PrimitiveSerializer<InlineResponse2003FinishReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CONTENT_FILTERED': 'CONTENT_FILTERED',
    'SUCCESS': 'SUCCESS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CONTENT_FILTERED': 'CONTENT_FILTERED',
    'SUCCESS': 'SUCCESS',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineResponse2003FinishReasonEnum];
  @override
  final String wireName = 'InlineResponse2003FinishReasonEnum';

  @override
  Object serialize(
          Serializers serializers, InlineResponse2003FinishReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineResponse2003FinishReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineResponse2003FinishReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InlineResponse2003 extends InlineResponse2003 {
  @override
  final String video;
  @override
  final InlineResponse2003FinishReasonEnum finishReason;
  @override
  final num? seed;

  factory _$InlineResponse2003(
          [void Function(InlineResponse2003Builder)? updates]) =>
      (new InlineResponse2003Builder()..update(updates))._build();

  _$InlineResponse2003._(
      {required this.video, required this.finishReason, this.seed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        video, r'InlineResponse2003', 'video');
    BuiltValueNullFieldError.checkNotNull(
        finishReason, r'InlineResponse2003', 'finishReason');
  }

  @override
  InlineResponse2003 rebuild(
          void Function(InlineResponse2003Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2003Builder toBuilder() =>
      new InlineResponse2003Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2003 &&
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
    return (newBuiltValueToStringHelper(r'InlineResponse2003')
          ..add('video', video)
          ..add('finishReason', finishReason)
          ..add('seed', seed))
        .toString();
  }
}

class InlineResponse2003Builder
    implements Builder<InlineResponse2003, InlineResponse2003Builder> {
  _$InlineResponse2003? _$v;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  InlineResponse2003FinishReasonEnum? _finishReason;
  InlineResponse2003FinishReasonEnum? get finishReason => _$this._finishReason;
  set finishReason(InlineResponse2003FinishReasonEnum? finishReason) =>
      _$this._finishReason = finishReason;

  num? _seed;
  num? get seed => _$this._seed;
  set seed(num? seed) => _$this._seed = seed;

  InlineResponse2003Builder() {
    InlineResponse2003._defaults(this);
  }

  InlineResponse2003Builder get _$this {
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
  void replace(InlineResponse2003 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineResponse2003;
  }

  @override
  void update(void Function(InlineResponse2003Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineResponse2003 build() => _build();

  _$InlineResponse2003 _build() {
    final _$result = _$v ??
        new _$InlineResponse2003._(
            video: BuiltValueNullFieldError.checkNotNull(
                video, r'InlineResponse2003', 'video'),
            finishReason: BuiltValueNullFieldError.checkNotNull(
                finishReason, r'InlineResponse2003', 'finishReason'),
            seed: seed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
