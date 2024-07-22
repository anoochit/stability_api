//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'clip_guidance_preset.g.dart';

class ClipGuidancePreset extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FAST_BLUE')
  static const ClipGuidancePreset FAST_BLUE = _$FAST_BLUE;
  @BuiltValueEnumConst(wireName: r'FAST_GREEN')
  static const ClipGuidancePreset FAST_GREEN = _$FAST_GREEN;
  @BuiltValueEnumConst(wireName: r'NONE')
  static const ClipGuidancePreset NONE = _$NONE;
  @BuiltValueEnumConst(wireName: r'SIMPLE')
  static const ClipGuidancePreset SIMPLE = _$SIMPLE;
  @BuiltValueEnumConst(wireName: r'SLOW')
  static const ClipGuidancePreset SLOW = _$SLOW;
  @BuiltValueEnumConst(wireName: r'SLOWER')
  static const ClipGuidancePreset SLOWER = _$SLOWER;
  @BuiltValueEnumConst(wireName: r'SLOWEST', fallback: true)
  static const ClipGuidancePreset SLOWEST = _$SLOWEST;

  static Serializer<ClipGuidancePreset> get serializer =>
      _$clipGuidancePresetSerializer;

  const ClipGuidancePreset._(String name) : super(name);

  static BuiltSet<ClipGuidancePreset> get values => _$values;
  static ClipGuidancePreset valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ClipGuidancePresetMixin = Object with _$ClipGuidancePresetMixin;
