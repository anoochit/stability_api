// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_to_image_using_step_schedule_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageToImageUsingStepScheduleRequestBody
    extends ImageToImageUsingStepScheduleRequestBody {
  @override
  final InitImageMode? initImageMode;
  @override
  final Uint8List initImage;
  @override
  final BuiltList<TextPrompt> textPrompts;
  @override
  final num? stepScheduleStart;
  @override
  final num? stepScheduleEnd;
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

  factory _$ImageToImageUsingStepScheduleRequestBody(
          [void Function(ImageToImageUsingStepScheduleRequestBodyBuilder)?
              updates]) =>
      (new ImageToImageUsingStepScheduleRequestBodyBuilder()..update(updates))
          ._build();

  _$ImageToImageUsingStepScheduleRequestBody._(
      {this.initImageMode,
      required this.initImage,
      required this.textPrompts,
      this.stepScheduleStart,
      this.stepScheduleEnd,
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
        initImage, r'ImageToImageUsingStepScheduleRequestBody', 'initImage');
    BuiltValueNullFieldError.checkNotNull(textPrompts,
        r'ImageToImageUsingStepScheduleRequestBody', 'textPrompts');
  }

  @override
  ImageToImageUsingStepScheduleRequestBody rebuild(
          void Function(ImageToImageUsingStepScheduleRequestBodyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageToImageUsingStepScheduleRequestBodyBuilder toBuilder() =>
      new ImageToImageUsingStepScheduleRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageToImageUsingStepScheduleRequestBody &&
        initImageMode == other.initImageMode &&
        initImage == other.initImage &&
        textPrompts == other.textPrompts &&
        stepScheduleStart == other.stepScheduleStart &&
        stepScheduleEnd == other.stepScheduleEnd &&
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
    _$hash = $jc(_$hash, stepScheduleStart.hashCode);
    _$hash = $jc(_$hash, stepScheduleEnd.hashCode);
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
            r'ImageToImageUsingStepScheduleRequestBody')
          ..add('initImageMode', initImageMode)
          ..add('initImage', initImage)
          ..add('textPrompts', textPrompts)
          ..add('stepScheduleStart', stepScheduleStart)
          ..add('stepScheduleEnd', stepScheduleEnd)
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

class ImageToImageUsingStepScheduleRequestBodyBuilder
    implements
        Builder<ImageToImageUsingStepScheduleRequestBody,
            ImageToImageUsingStepScheduleRequestBodyBuilder>,
        GenerationRequestOptionalParamsBuilder {
  _$ImageToImageUsingStepScheduleRequestBody? _$v;

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

  num? _stepScheduleStart;
  num? get stepScheduleStart => _$this._stepScheduleStart;
  set stepScheduleStart(covariant num? stepScheduleStart) =>
      _$this._stepScheduleStart = stepScheduleStart;

  num? _stepScheduleEnd;
  num? get stepScheduleEnd => _$this._stepScheduleEnd;
  set stepScheduleEnd(covariant num? stepScheduleEnd) =>
      _$this._stepScheduleEnd = stepScheduleEnd;

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

  ImageToImageUsingStepScheduleRequestBodyBuilder() {
    ImageToImageUsingStepScheduleRequestBody._defaults(this);
  }

  ImageToImageUsingStepScheduleRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _initImageMode = $v.initImageMode;
      _initImage = $v.initImage;
      _textPrompts = $v.textPrompts.toBuilder();
      _stepScheduleStart = $v.stepScheduleStart;
      _stepScheduleEnd = $v.stepScheduleEnd;
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
  void replace(covariant ImageToImageUsingStepScheduleRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageToImageUsingStepScheduleRequestBody;
  }

  @override
  void update(
      void Function(ImageToImageUsingStepScheduleRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageToImageUsingStepScheduleRequestBody build() => _build();

  _$ImageToImageUsingStepScheduleRequestBody _build() {
    _$ImageToImageUsingStepScheduleRequestBody _$result;
    try {
      _$result = _$v ??
          new _$ImageToImageUsingStepScheduleRequestBody._(
              initImageMode: initImageMode,
              initImage: BuiltValueNullFieldError.checkNotNull(initImage,
                  r'ImageToImageUsingStepScheduleRequestBody', 'initImage'),
              textPrompts: textPrompts.build(),
              stepScheduleStart: stepScheduleStart,
              stepScheduleEnd: stepScheduleEnd,
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
            r'ImageToImageUsingStepScheduleRequestBody',
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
