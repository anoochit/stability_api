// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sampler.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Sampler _$DDIM = const Sampler._('DDIM');
const Sampler _$DDPM = const Sampler._('DDPM');
const Sampler _$kDPMPP2M = const Sampler._('kDPMPP2M');
const Sampler _$kDPMPP2SANCESTRAL = const Sampler._('kDPMPP2SANCESTRAL');
const Sampler _$kDPM2 = const Sampler._('kDPM2');
const Sampler _$kDPM2ANCESTRAL = const Sampler._('kDPM2ANCESTRAL');
const Sampler _$K_EULER = const Sampler._('K_EULER');
const Sampler _$K_EULER_ANCESTRAL = const Sampler._('K_EULER_ANCESTRAL');
const Sampler _$K_HEUN = const Sampler._('K_HEUN');
const Sampler _$K_LMS = const Sampler._('K_LMS');

Sampler _$valueOf(String name) {
  switch (name) {
    case 'DDIM':
      return _$DDIM;
    case 'DDPM':
      return _$DDPM;
    case 'kDPMPP2M':
      return _$kDPMPP2M;
    case 'kDPMPP2SANCESTRAL':
      return _$kDPMPP2SANCESTRAL;
    case 'kDPM2':
      return _$kDPM2;
    case 'kDPM2ANCESTRAL':
      return _$kDPM2ANCESTRAL;
    case 'K_EULER':
      return _$K_EULER;
    case 'K_EULER_ANCESTRAL':
      return _$K_EULER_ANCESTRAL;
    case 'K_HEUN':
      return _$K_HEUN;
    case 'K_LMS':
      return _$K_LMS;
    default:
      return _$K_LMS;
  }
}

final BuiltSet<Sampler> _$values = new BuiltSet<Sampler>(const <Sampler>[
  _$DDIM,
  _$DDPM,
  _$kDPMPP2M,
  _$kDPMPP2SANCESTRAL,
  _$kDPM2,
  _$kDPM2ANCESTRAL,
  _$K_EULER,
  _$K_EULER_ANCESTRAL,
  _$K_HEUN,
  _$K_LMS,
]);

class _$SamplerMeta {
  const _$SamplerMeta();
  Sampler get DDIM => _$DDIM;
  Sampler get DDPM => _$DDPM;
  Sampler get kDPMPP2M => _$kDPMPP2M;
  Sampler get kDPMPP2SANCESTRAL => _$kDPMPP2SANCESTRAL;
  Sampler get kDPM2 => _$kDPM2;
  Sampler get kDPM2ANCESTRAL => _$kDPM2ANCESTRAL;
  Sampler get K_EULER => _$K_EULER;
  Sampler get K_EULER_ANCESTRAL => _$K_EULER_ANCESTRAL;
  Sampler get K_HEUN => _$K_HEUN;
  Sampler get K_LMS => _$K_LMS;
  Sampler valueOf(String name) => _$valueOf(name);
  BuiltSet<Sampler> get values => _$values;
}

abstract class _$SamplerMixin {
  // ignore: non_constant_identifier_names
  _$SamplerMeta get Sampler => const _$SamplerMeta();
}

Serializer<Sampler> _$samplerSerializer = new _$SamplerSerializer();

class _$SamplerSerializer implements PrimitiveSerializer<Sampler> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DDIM': 'DDIM',
    'DDPM': 'DDPM',
    'kDPMPP2M': 'K_DPMPP_2M',
    'kDPMPP2SANCESTRAL': 'K_DPMPP_2S_ANCESTRAL',
    'kDPM2': 'K_DPM_2',
    'kDPM2ANCESTRAL': 'K_DPM_2_ANCESTRAL',
    'K_EULER': 'K_EULER',
    'K_EULER_ANCESTRAL': 'K_EULER_ANCESTRAL',
    'K_HEUN': 'K_HEUN',
    'K_LMS': 'K_LMS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DDIM': 'DDIM',
    'DDPM': 'DDPM',
    'K_DPMPP_2M': 'kDPMPP2M',
    'K_DPMPP_2S_ANCESTRAL': 'kDPMPP2SANCESTRAL',
    'K_DPM_2': 'kDPM2',
    'K_DPM_2_ANCESTRAL': 'kDPM2ANCESTRAL',
    'K_EULER': 'K_EULER',
    'K_EULER_ANCESTRAL': 'K_EULER_ANCESTRAL',
    'K_HEUN': 'K_HEUN',
    'K_LMS': 'K_LMS',
  };

  @override
  final Iterable<Type> types = const <Type>[Sampler];
  @override
  final String wireName = 'Sampler';

  @override
  Object serialize(Serializers serializers, Sampler object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Sampler deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Sampler.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
