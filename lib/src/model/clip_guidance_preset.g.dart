// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip_guidance_preset.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClipGuidancePreset _$FAST_BLUE = const ClipGuidancePreset._('FAST_BLUE');
const ClipGuidancePreset _$FAST_GREEN =
    const ClipGuidancePreset._('FAST_GREEN');
const ClipGuidancePreset _$NONE = const ClipGuidancePreset._('NONE');
const ClipGuidancePreset _$SIMPLE = const ClipGuidancePreset._('SIMPLE');
const ClipGuidancePreset _$SLOW = const ClipGuidancePreset._('SLOW');
const ClipGuidancePreset _$SLOWER = const ClipGuidancePreset._('SLOWER');
const ClipGuidancePreset _$SLOWEST = const ClipGuidancePreset._('SLOWEST');

ClipGuidancePreset _$valueOf(String name) {
  switch (name) {
    case 'FAST_BLUE':
      return _$FAST_BLUE;
    case 'FAST_GREEN':
      return _$FAST_GREEN;
    case 'NONE':
      return _$NONE;
    case 'SIMPLE':
      return _$SIMPLE;
    case 'SLOW':
      return _$SLOW;
    case 'SLOWER':
      return _$SLOWER;
    case 'SLOWEST':
      return _$SLOWEST;
    default:
      return _$SLOWEST;
  }
}

final BuiltSet<ClipGuidancePreset> _$values =
    new BuiltSet<ClipGuidancePreset>(const <ClipGuidancePreset>[
  _$FAST_BLUE,
  _$FAST_GREEN,
  _$NONE,
  _$SIMPLE,
  _$SLOW,
  _$SLOWER,
  _$SLOWEST,
]);

class _$ClipGuidancePresetMeta {
  const _$ClipGuidancePresetMeta();
  ClipGuidancePreset get FAST_BLUE => _$FAST_BLUE;
  ClipGuidancePreset get FAST_GREEN => _$FAST_GREEN;
  ClipGuidancePreset get NONE => _$NONE;
  ClipGuidancePreset get SIMPLE => _$SIMPLE;
  ClipGuidancePreset get SLOW => _$SLOW;
  ClipGuidancePreset get SLOWER => _$SLOWER;
  ClipGuidancePreset get SLOWEST => _$SLOWEST;
  ClipGuidancePreset valueOf(String name) => _$valueOf(name);
  BuiltSet<ClipGuidancePreset> get values => _$values;
}

abstract class _$ClipGuidancePresetMixin {
  // ignore: non_constant_identifier_names
  _$ClipGuidancePresetMeta get ClipGuidancePreset =>
      const _$ClipGuidancePresetMeta();
}

Serializer<ClipGuidancePreset> _$clipGuidancePresetSerializer =
    new _$ClipGuidancePresetSerializer();

class _$ClipGuidancePresetSerializer
    implements PrimitiveSerializer<ClipGuidancePreset> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FAST_BLUE': 'FAST_BLUE',
    'FAST_GREEN': 'FAST_GREEN',
    'NONE': 'NONE',
    'SIMPLE': 'SIMPLE',
    'SLOW': 'SLOW',
    'SLOWER': 'SLOWER',
    'SLOWEST': 'SLOWEST',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FAST_BLUE': 'FAST_BLUE',
    'FAST_GREEN': 'FAST_GREEN',
    'NONE': 'NONE',
    'SIMPLE': 'SIMPLE',
    'SLOW': 'SLOW',
    'SLOWER': 'SLOWER',
    'SLOWEST': 'SLOWEST',
  };

  @override
  final Iterable<Type> types = const <Type>[ClipGuidancePreset];
  @override
  final String wireName = 'ClipGuidancePreset';

  @override
  Object serialize(Serializers serializers, ClipGuidancePreset object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClipGuidancePreset deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClipGuidancePreset.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
