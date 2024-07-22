// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_request_optional_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class GenerationRequestOptionalParamsBuilder {
  void replace(GenerationRequestOptionalParams other);
  void update(void Function(GenerationRequestOptionalParamsBuilder) updates);
  num? get cfgScale;
  set cfgScale(num? cfgScale);

  ClipGuidancePreset? get clipGuidancePreset;
  set clipGuidancePreset(ClipGuidancePreset? clipGuidancePreset);

  Sampler? get sampler;
  set sampler(Sampler? sampler);

  int? get samples;
  set samples(int? samples);

  int? get seed;
  set seed(int? seed);

  int? get steps;
  set steps(int? steps);

  StylePreset? get stylePreset;
  set stylePreset(StylePreset? stylePreset);

  JsonObject? get extras;
  set extras(JsonObject? extras);
}

class _$$GenerationRequestOptionalParams
    extends $GenerationRequestOptionalParams {
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

  factory _$$GenerationRequestOptionalParams(
          [void Function($GenerationRequestOptionalParamsBuilder)? updates]) =>
      (new $GenerationRequestOptionalParamsBuilder()..update(updates))._build();

  _$$GenerationRequestOptionalParams._(
      {this.cfgScale,
      this.clipGuidancePreset,
      this.sampler,
      this.samples,
      this.seed,
      this.steps,
      this.stylePreset,
      this.extras})
      : super._();

  @override
  $GenerationRequestOptionalParams rebuild(
          void Function($GenerationRequestOptionalParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $GenerationRequestOptionalParamsBuilder toBuilder() =>
      new $GenerationRequestOptionalParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $GenerationRequestOptionalParams &&
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
    return (newBuiltValueToStringHelper(r'$GenerationRequestOptionalParams')
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

class $GenerationRequestOptionalParamsBuilder
    implements
        Builder<$GenerationRequestOptionalParams,
            $GenerationRequestOptionalParamsBuilder>,
        GenerationRequestOptionalParamsBuilder {
  _$$GenerationRequestOptionalParams? _$v;

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

  $GenerationRequestOptionalParamsBuilder() {
    $GenerationRequestOptionalParams._defaults(this);
  }

  $GenerationRequestOptionalParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $GenerationRequestOptionalParams other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$GenerationRequestOptionalParams;
  }

  @override
  void update(void Function($GenerationRequestOptionalParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $GenerationRequestOptionalParams build() => _build();

  _$$GenerationRequestOptionalParams _build() {
    final _$result = _$v ??
        new _$$GenerationRequestOptionalParams._(
            cfgScale: cfgScale,
            clipGuidancePreset: clipGuidancePreset,
            sampler: sampler,
            samples: samples,
            seed: seed,
            steps: steps,
            stylePreset: stylePreset,
            extras: extras);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
