// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImageFinishReasonEnum _$imageFinishReasonEnum_CONTENT_FILTERED =
    const ImageFinishReasonEnum._('CONTENT_FILTERED');
const ImageFinishReasonEnum _$imageFinishReasonEnum_ERROR =
    const ImageFinishReasonEnum._('ERROR');
const ImageFinishReasonEnum _$imageFinishReasonEnum_SUCCESS =
    const ImageFinishReasonEnum._('SUCCESS');

ImageFinishReasonEnum _$imageFinishReasonEnumValueOf(String name) {
  switch (name) {
    case 'CONTENT_FILTERED':
      return _$imageFinishReasonEnum_CONTENT_FILTERED;
    case 'ERROR':
      return _$imageFinishReasonEnum_ERROR;
    case 'SUCCESS':
      return _$imageFinishReasonEnum_SUCCESS;
    default:
      return _$imageFinishReasonEnum_SUCCESS;
  }
}

final BuiltSet<ImageFinishReasonEnum> _$imageFinishReasonEnumValues =
    new BuiltSet<ImageFinishReasonEnum>(const <ImageFinishReasonEnum>[
  _$imageFinishReasonEnum_CONTENT_FILTERED,
  _$imageFinishReasonEnum_ERROR,
  _$imageFinishReasonEnum_SUCCESS,
]);

Serializer<ImageFinishReasonEnum> _$imageFinishReasonEnumSerializer =
    new _$ImageFinishReasonEnumSerializer();

class _$ImageFinishReasonEnumSerializer
    implements PrimitiveSerializer<ImageFinishReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CONTENT_FILTERED': 'CONTENT_FILTERED',
    'ERROR': 'ERROR',
    'SUCCESS': 'SUCCESS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CONTENT_FILTERED': 'CONTENT_FILTERED',
    'ERROR': 'ERROR',
    'SUCCESS': 'SUCCESS',
  };

  @override
  final Iterable<Type> types = const <Type>[ImageFinishReasonEnum];
  @override
  final String wireName = 'ImageFinishReasonEnum';

  @override
  Object serialize(Serializers serializers, ImageFinishReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ImageFinishReasonEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ImageFinishReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Image extends Image {
  @override
  final String? base64;
  @override
  final ImageFinishReasonEnum? finishReason;
  @override
  final num? seed;

  factory _$Image([void Function(ImageBuilder)? updates]) =>
      (new ImageBuilder()..update(updates))._build();

  _$Image._({this.base64, this.finishReason, this.seed}) : super._();

  @override
  Image rebuild(void Function(ImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageBuilder toBuilder() => new ImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Image &&
        base64 == other.base64 &&
        finishReason == other.finishReason &&
        seed == other.seed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, base64.hashCode);
    _$hash = $jc(_$hash, finishReason.hashCode);
    _$hash = $jc(_$hash, seed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Image')
          ..add('base64', base64)
          ..add('finishReason', finishReason)
          ..add('seed', seed))
        .toString();
  }
}

class ImageBuilder implements Builder<Image, ImageBuilder> {
  _$Image? _$v;

  String? _base64;
  String? get base64 => _$this._base64;
  set base64(String? base64) => _$this._base64 = base64;

  ImageFinishReasonEnum? _finishReason;
  ImageFinishReasonEnum? get finishReason => _$this._finishReason;
  set finishReason(ImageFinishReasonEnum? finishReason) =>
      _$this._finishReason = finishReason;

  num? _seed;
  num? get seed => _$this._seed;
  set seed(num? seed) => _$this._seed = seed;

  ImageBuilder() {
    Image._defaults(this);
  }

  ImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _base64 = $v.base64;
      _finishReason = $v.finishReason;
      _seed = $v.seed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Image;
  }

  @override
  void update(void Function(ImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Image build() => _build();

  _$Image _build() {
    final _$result = _$v ??
        new _$Image._(base64: base64, finishReason: finishReason, seed: seed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
