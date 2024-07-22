// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'masking_using_mask_image_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MaskingUsingMaskImageRequestBody
    extends MaskingUsingMaskImageRequestBody {
  @override
  final Uint8List initImage;
  @override
  final BuiltList<TextPrompt> textPrompts;
  @override
  final String maskSource;
  @override
  final Uint8List maskImage;
  @override
  final num? cfgScale;
  @override
  final ClipGuidancePreset? clipGuidancePreset;
  @override
  final Sampler? sampler;
  @override
  final int? samples;
  @override
  final int? seed;
  @override
  final int? steps;
  @override
  final StylePreset? stylePreset;
  @override
  final JsonObject? extras;

  factory _$MaskingUsingMaskImageRequestBody(
          [void Function(MaskingUsingMaskImageRequestBodyBuilder)? updates]) =>
      (new MaskingUsingMaskImageRequestBodyBuilder()..update(updates))._build();

  _$MaskingUsingMaskImageRequestBody._(
      {required this.initImage,
      required this.textPrompts,
      required this.maskSource,
      required this.maskImage,
      this.cfgScale,
      this.clipGuidancePreset,
      this.sampler,
      this.samples,
      this.seed,
      this.steps,
      this.stylePreset,
      this.extras})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        initImage, r'MaskingUsingMaskImageRequestBody', 'initImage');
    BuiltValueNullFieldError.checkNotNull(
        textPrompts, r'MaskingUsingMaskImageRequestBody', 'textPrompts');
    BuiltValueNullFieldError.checkNotNull(
        maskSource, r'MaskingUsingMaskImageRequestBody', 'maskSource');
    BuiltValueNullFieldError.checkNotNull(
        maskImage, r'MaskingUsingMaskImageRequestBody', 'maskImage');
  }

  @override
  MaskingUsingMaskImageRequestBody rebuild(
          void Function(MaskingUsingMaskImageRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaskingUsingMaskImageRequestBodyBuilder toBuilder() =>
      new MaskingUsingMaskImageRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaskingUsingMaskImageRequestBody &&
        initImage == other.initImage &&
        textPrompts == other.textPrompts &&
        maskSource == other.maskSource &&
        maskImage == other.maskImage &&
        cfgScale == other.cfgScale &&
        clipGuidancePreset == other.clipGuidancePreset &&
        sampler == other.sampler &&
        samples == other.samples &&
        seed == other.seed &&
        steps == other.steps &&
        stylePreset == other.stylePreset &&
        extras == other.extras;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, initImage.hashCode);
    _$hash = $jc(_$hash, textPrompts.hashCode);
    _$hash = $jc(_$hash, maskSource.hashCode);
    _$hash = $jc(_$hash, maskImage.hashCode);
    _$hash = $jc(_$hash, cfgScale.hashCode);
    _$hash = $jc(_$hash, clipGuidancePreset.hashCode);
    _$hash = $jc(_$hash, sampler.hashCode);
    _$hash = $jc(_$hash, samples.hashCode);
    _$hash = $jc(_$hash, seed.hashCode);
    _$hash = $jc(_$hash, steps.hashCode);
    _$hash = $jc(_$hash, stylePreset.hashCode);
    _$hash = $jc(_$hash, extras.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MaskingUsingMaskImageRequestBody')
          ..add('initImage', initImage)
          ..add('textPrompts', textPrompts)
          ..add('maskSource', maskSource)
          ..add('maskImage', maskImage)
          ..add('cfgScale', cfgScale)
          ..add('clipGuidancePreset', clipGuidancePreset)
          ..add('sampler', sampler)
          ..add('samples', samples)
          ..add('seed', seed)
          ..add('steps', steps)
          ..add('stylePreset', stylePreset)
          ..add('extras', extras))
        .toString();
  }
}

class MaskingUsingMaskImageRequestBodyBuilder
    implements
        Builder<MaskingUsingMaskImageRequestBody,
            MaskingUsingMaskImageRequestBodyBuilder>,
        GenerationRequestOptionalParamsBuilder {
  _$MaskingUsingMaskImageRequestBody? _$v;

  Uint8List? _initImage;
  Uint8List? get initImage => _$this._initImage;
  set initImage(covariant Uint8List? initImage) =>
      _$this._initImage = initImage;

  ListBuilder<TextPrompt>? _textPrompts;
  ListBuilder<TextPrompt> get textPrompts =>
      _$this._textPrompts ??= new ListBuilder<TextPrompt>();
  set textPrompts(covariant ListBuilder<TextPrompt>? textPrompts) =>
      _$this._textPrompts = textPrompts;

  String? _maskSource;
  String? get maskSource => _$this._maskSource;
  set maskSource(covariant String? maskSource) =>
      _$this._maskSource = maskSource;

  Uint8List? _maskImage;
  Uint8List? get maskImage => _$this._maskImage;
  set maskImage(covariant Uint8List? maskImage) =>
      _$this._maskImage = maskImage;

  num? _cfgScale;
  num? get cfgScale => _$this._cfgScale;
  set cfgScale(covariant num? cfgScale) => _$this._cfgScale = cfgScale;

  ClipGuidancePreset? _clipGuidancePreset;
  ClipGuidancePreset? get clipGuidancePreset => _$this._clipGuidancePreset;
  set clipGuidancePreset(covariant ClipGuidancePreset? clipGuidancePreset) =>
      _$this._clipGuidancePreset = clipGuidancePreset;

  Sampler? _sampler;
  Sampler? get sampler => _$this._sampler;
  set sampler(covariant Sampler? sampler) => _$this._sampler = sampler;

  int? _samples;
  int? get samples => _$this._samples;
  set samples(covariant int? samples) => _$this._samples = samples;

  int? _seed;
  int? get seed => _$this._seed;
  set seed(covariant int? seed) => _$this._seed = seed;

  int? _steps;
  int? get steps => _$this._steps;
  set steps(covariant int? steps) => _$this._steps = steps;

  StylePreset? _stylePreset;
  StylePreset? get stylePreset => _$this._stylePreset;
  set stylePreset(covariant StylePreset? stylePreset) =>
      _$this._stylePreset = stylePreset;

  JsonObject? _extras;
  JsonObject? get extras => _$this._extras;
  set extras(covariant JsonObject? extras) => _$this._extras = extras;

  MaskingUsingMaskImageRequestBodyBuilder() {
    MaskingUsingMaskImageRequestBody._defaults(this);
  }

  MaskingUsingMaskImageRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _initImage = $v.initImage;
      _textPrompts = $v.textPrompts.toBuilder();
      _maskSource = $v.maskSource;
      _maskImage = $v.maskImage;
      _cfgScale = $v.cfgScale;
      _clipGuidancePreset = $v.clipGuidancePreset;
      _sampler = $v.sampler;
      _samples = $v.samples;
      _seed = $v.seed;
      _steps = $v.steps;
      _stylePreset = $v.stylePreset;
      _extras = $v.extras;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MaskingUsingMaskImageRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaskingUsingMaskImageRequestBody;
  }

  @override
  void update(void Function(MaskingUsingMaskImageRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaskingUsingMaskImageRequestBody build() => _build();

  _$MaskingUsingMaskImageRequestBody _build() {
    _$MaskingUsingMaskImageRequestBody _$result;
    try {
      _$result = _$v ??
          new _$MaskingUsingMaskImageRequestBody._(
              initImage: BuiltValueNullFieldError.checkNotNull(
                  initImage, r'MaskingUsingMaskImageRequestBody', 'initImage'),
              textPrompts: textPrompts.build(),
              maskSource: BuiltValueNullFieldError.checkNotNull(maskSource,
                  r'MaskingUsingMaskImageRequestBody', 'maskSource'),
              maskImage: BuiltValueNullFieldError.checkNotNull(
                  maskImage, r'MaskingUsingMaskImageRequestBody', 'maskImage'),
              cfgScale: cfgScale,
              clipGuidancePreset: clipGuidancePreset,
              sampler: sampler,
              samples: samples,
              seed: seed,
              steps: steps,
              stylePreset: stylePreset,
              extras: extras);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'textPrompts';
        textPrompts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MaskingUsingMaskImageRequestBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
