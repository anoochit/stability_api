//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'init_image_mode.g.dart';

class InitImageMode extends EnumClass {
  /// Whether to use `image_strength` or `step_schedule_*` to control how much influence the `init_image` has on the result.
  @BuiltValueEnumConst(wireName: r'IMAGE_STRENGTH')
  static const InitImageMode IMAGE_STRENGTH = _$IMAGE_STRENGTH;

  /// Whether to use `image_strength` or `step_schedule_*` to control how much influence the `init_image` has on the result.
  @BuiltValueEnumConst(wireName: r'STEP_SCHEDULE', fallback: true)
  static const InitImageMode STEP_SCHEDULE = _$STEP_SCHEDULE;

  static Serializer<InitImageMode> get serializer => _$initImageModeSerializer;

  const InitImageMode._(String name) : super(name);

  static BuiltSet<InitImageMode> get values => _$values;
  static InitImageMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class InitImageModeMixin = Object with _$InitImageModeMixin;
