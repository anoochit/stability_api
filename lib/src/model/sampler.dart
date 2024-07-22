//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sampler.g.dart';

class Sampler extends EnumClass {
  /// Which sampler to use for the diffusion process. If this value is omitted we'll automatically select an appropriate sampler for you.
  @BuiltValueEnumConst(wireName: r'DDIM')
  static const Sampler DDIM = _$DDIM;

  /// Which sampler to use for the diffusion process. If this value is omitted we'll automatically select an appropriate sampler for you.
  @BuiltValueEnumConst(wireName: r'DDPM')
  static const Sampler DDPM = _$DDPM;

  /// Which sampler to use for the diffusion process. If this value is omitted we'll automatically select an appropriate sampler for you.
  @BuiltValueEnumConst(wireName: r'K_DPMPP_2M')
  static const Sampler kDPMPP2M = _$kDPMPP2M;

  /// Which sampler to use for the diffusion process. If this value is omitted we'll automatically select an appropriate sampler for you.
  @BuiltValueEnumConst(wireName: r'K_DPMPP_2S_ANCESTRAL')
  static const Sampler kDPMPP2SANCESTRAL = _$kDPMPP2SANCESTRAL;

  /// Which sampler to use for the diffusion process. If this value is omitted we'll automatically select an appropriate sampler for you.
  @BuiltValueEnumConst(wireName: r'K_DPM_2')
  static const Sampler kDPM2 = _$kDPM2;

  /// Which sampler to use for the diffusion process. If this value is omitted we'll automatically select an appropriate sampler for you.
  @BuiltValueEnumConst(wireName: r'K_DPM_2_ANCESTRAL')
  static const Sampler kDPM2ANCESTRAL = _$kDPM2ANCESTRAL;

  /// Which sampler to use for the diffusion process. If this value is omitted we'll automatically select an appropriate sampler for you.
  @BuiltValueEnumConst(wireName: r'K_EULER')
  static const Sampler K_EULER = _$K_EULER;

  /// Which sampler to use for the diffusion process. If this value is omitted we'll automatically select an appropriate sampler for you.
  @BuiltValueEnumConst(wireName: r'K_EULER_ANCESTRAL')
  static const Sampler K_EULER_ANCESTRAL = _$K_EULER_ANCESTRAL;

  /// Which sampler to use for the diffusion process. If this value is omitted we'll automatically select an appropriate sampler for you.
  @BuiltValueEnumConst(wireName: r'K_HEUN')
  static const Sampler K_HEUN = _$K_HEUN;

  /// Which sampler to use for the diffusion process. If this value is omitted we'll automatically select an appropriate sampler for you.
  @BuiltValueEnumConst(wireName: r'K_LMS', fallback: true)
  static const Sampler K_LMS = _$K_LMS;

  static Serializer<Sampler> get serializer => _$samplerSerializer;

  const Sampler._(String name) : super(name);

  static BuiltSet<Sampler> get values => _$values;
  static Sampler valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SamplerMixin = Object with _$SamplerMixin;
