// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_image_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InitImageMode _$IMAGE_STRENGTH = const InitImageMode._('IMAGE_STRENGTH');
const InitImageMode _$STEP_SCHEDULE = const InitImageMode._('STEP_SCHEDULE');

InitImageMode _$valueOf(String name) {
  switch (name) {
    case 'IMAGE_STRENGTH':
      return _$IMAGE_STRENGTH;
    case 'STEP_SCHEDULE':
      return _$STEP_SCHEDULE;
    default:
      return _$STEP_SCHEDULE;
  }
}

final BuiltSet<InitImageMode> _$values =
    new BuiltSet<InitImageMode>(const <InitImageMode>[
  _$IMAGE_STRENGTH,
  _$STEP_SCHEDULE,
]);

class _$InitImageModeMeta {
  const _$InitImageModeMeta();
  InitImageMode get IMAGE_STRENGTH => _$IMAGE_STRENGTH;
  InitImageMode get STEP_SCHEDULE => _$STEP_SCHEDULE;
  InitImageMode valueOf(String name) => _$valueOf(name);
  BuiltSet<InitImageMode> get values => _$values;
}

abstract class _$InitImageModeMixin {
  // ignore: non_constant_identifier_names
  _$InitImageModeMeta get InitImageMode => const _$InitImageModeMeta();
}

Serializer<InitImageMode> _$initImageModeSerializer =
    new _$InitImageModeSerializer();

class _$InitImageModeSerializer implements PrimitiveSerializer<InitImageMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'IMAGE_STRENGTH': 'IMAGE_STRENGTH',
    'STEP_SCHEDULE': 'STEP_SCHEDULE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'IMAGE_STRENGTH': 'IMAGE_STRENGTH',
    'STEP_SCHEDULE': 'STEP_SCHEDULE',
  };

  @override
  final Iterable<Type> types = const <Type>[InitImageMode];
  @override
  final String wireName = 'InitImageMode';

  @override
  Object serialize(Serializers serializers, InitImageMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InitImageMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InitImageMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
