// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_to_image_request_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TextToImageRequestBody extends TextToImageRequestBody {
  @override
  final BuiltList<TextPrompt> textPrompts;
  @override
  final int? width;
  @override
  final int? height;
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

  factory _$TextToImageRequestBody(
          [void Function(TextToImageRequestBodyBuilder)? updates]) =>
      (new TextToImageRequestBodyBuilder()..update(updates))._build();

  _$TextToImageRequestBody._(
      {required this.textPrompts,
      this.width,
      this.height,
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
        textPrompts, r'TextToImageRequestBody', 'textPrompts');
  }

  @override
  TextToImageRequestBody rebuild(
          void Function(TextToImageRequestBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TextToImageRequestBodyBuilder toBuilder() =>
      new TextToImageRequestBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TextToImageRequestBody &&
        textPrompts == other.textPrompts &&
        width == other.width &&
        height == other.height &&
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
    _$hash = $jc(_$hash, textPrompts.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
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
    return (newBuiltValueToStringHelper(r'TextToImageRequestBody')
          ..add('textPrompts', textPrompts)
          ..add('width', width)
          ..add('height', height)
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

class TextToImageRequestBodyBuilder
    implements
        Builder<TextToImageRequestBody, TextToImageRequestBodyBuilder>,
        GenerationRequestOptionalParamsBuilder {
  _$TextToImageRequestBody? _$v;

  ListBuilder<TextPrompt>? _textPrompts;
  ListBuilder<TextPrompt> get textPrompts =>
      _$this._textPrompts ??= new ListBuilder<TextPrompt>();
  set textPrompts(covariant ListBuilder<TextPrompt>? textPrompts) =>
      _$this._textPrompts = textPrompts;

  int? _width;
  int? get width => _$this._width;
  set width(covariant int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(covariant int? height) => _$this._height = height;

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

  TextToImageRequestBodyBuilder() {
    TextToImageRequestBody._defaults(this);
  }

  TextToImageRequestBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _textPrompts = $v.textPrompts.toBuilder();
      _width = $v.width;
      _height = $v.height;
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
  void replace(covariant TextToImageRequestBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TextToImageRequestBody;
  }

  @override
  void update(void Function(TextToImageRequestBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TextToImageRequestBody build() => _build();

  _$TextToImageRequestBody _build() {
    _$TextToImageRequestBody _$result;
    try {
      _$result = _$v ??
          new _$TextToImageRequestBody._(
              textPrompts: textPrompts.build(),
              width: width,
              height: height,
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
            r'TextToImageRequestBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
