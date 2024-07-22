// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_to_image_using_image_strength_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageToImageUsingImageStrengthRequestBody
    extends ImageToImageUsingImageStrengthRequestBody {
  @override
  final InitImageMode? initImageMode;
  @override
  final Uint8List initImage;
  @override
  final BuiltList<TextPrompt> textPrompts;
  @override
  final double? imageStrength;
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

  factory _$ImageToImageUsingImageStrengthRequestBody(
          [void Function(ImageToImageUsingImageStrengthRequestBodyBuilder)?
              updates]) =>
      (new ImageToImageUsingImageStrengthRequestBodyBuilder()..update(updates))
          ._build();

  _$ImageToImageUsingImageStrengthRequestBody._(
      {this.initImageMode,
      required this.initImage,
      required this.textPrompts,
      this.imageStrength,
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
        initImage, r'ImageToImageUsingImageStrengthRequestBody', 'initImage');
    BuiltValueNullFieldError.checkNotNull(textPrompts,
        r'ImageToImageUsingImageStrengthRequestBody', 'textPrompts');
  }

  @override
  ImageToImageUsingImageStrengthRequestBody rebuild(
          void Function(ImageToImageUsingImageStrengthRequestBodyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageToImageUsingImageStrengthRequestBodyBuilder toBuilder() =>
      new ImageToImageUsingImageStrengthRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageToImageUsingImageStrengthRequestBody &&
        initImageMode == other.initImageMode &&
        initImage == other.initImage &&
        textPrompts == other.textPrompts &&
        imageStrength == other.imageStrength &&
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
    _$hash = $jc(_$hash, initImageMode.hashCode);
    _$hash = $jc(_$hash, initImage.hashCode);
    _$hash = $jc(_$hash, textPrompts.hashCode);
    _$hash = $jc(_$hash, imageStrength.hashCode);
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
    return (newBuiltValueToStringHelper(
            r'ImageToImageUsingImageStrengthRequestBody')
          ..add('initImageMode', initImageMode)
          ..add('initImage', initImage)
          ..add('textPrompts', textPrompts)
          ..add('imageStrength', imageStrength)
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

class ImageToImageUsingImageStrengthRequestBodyBuilder
    implements
        Builder<ImageToImageUsingImageStrengthRequestBody,
            ImageToImageUsingImageStrengthRequestBodyBuilder>,
        GenerationRequestOptionalParamsBuilder {
  _$ImageToImageUsingImageStrengthRequestBody? _$v;

  InitImageMode? _initImageMode;
  InitImageMode? get initImageMode => _$this._initImageMode;
  set initImageMode(covariant InitImageMode? initImageMode) =>
      _$this._initImageMode = initImageMode;

  Uint8List? _initImage;
  Uint8List? get initImage => _$this._initImage;
  set initImage(covariant Uint8List? initImage) =>
      _$this._initImage = initImage;

  ListBuilder<TextPrompt>? _textPrompts;
  ListBuilder<TextPrompt> get textPrompts =>
      _$this._textPrompts ??= new ListBuilder<TextPrompt>();
  set textPrompts(covariant ListBuilder<TextPrompt>? textPrompts) =>
      _$this._textPrompts = textPrompts;

  double? _imageStrength;
  double? get imageStrength => _$this._imageStrength;
  set imageStrength(covariant double? imageStrength) =>
      _$this._imageStrength = imageStrength;

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

  ImageToImageUsingImageStrengthRequestBodyBuilder() {
    ImageToImageUsingImageStrengthRequestBody._defaults(this);
  }

  ImageToImageUsingImageStrengthRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _initImageMode = $v.initImageMode;
      _initImage = $v.initImage;
      _textPrompts = $v.textPrompts.toBuilder();
      _imageStrength = $v.imageStrength;
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
  void replace(covariant ImageToImageUsingImageStrengthRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageToImageUsingImageStrengthRequestBody;
  }

  @override
  void update(
      void Function(ImageToImageUsingImageStrengthRequestBodyBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageToImageUsingImageStrengthRequestBody build() => _build();

  _$ImageToImageUsingImageStrengthRequestBody _build() {
    _$ImageToImageUsingImageStrengthRequestBody _$result;
    try {
      _$result = _$v ??
          new _$ImageToImageUsingImageStrengthRequestBody._(
              initImageMode: initImageMode,
              initImage: BuiltValueNullFieldError.checkNotNull(initImage,
                  r'ImageToImageUsingImageStrengthRequestBody', 'initImage'),
              textPrompts: textPrompts.build(),
              imageStrength: imageStrength,
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
            r'ImageToImageUsingImageStrengthRequestBody',
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
