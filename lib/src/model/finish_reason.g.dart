// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FinishReason _$CONTENT_FILTERED =
    const FinishReason._('CONTENT_FILTERED');
const FinishReason _$ERROR = const FinishReason._('ERROR');
const FinishReason _$SUCCESS = const FinishReason._('SUCCESS');

FinishReason _$valueOf(String name) {
  switch (name) {
    case 'CONTENT_FILTERED':
      return _$CONTENT_FILTERED;
    case 'ERROR':
      return _$ERROR;
    case 'SUCCESS':
      return _$SUCCESS;
    default:
      return _$SUCCESS;
  }
}

final BuiltSet<FinishReason> _$values =
    new BuiltSet<FinishReason>(const <FinishReason>[
  _$CONTENT_FILTERED,
  _$ERROR,
  _$SUCCESS,
]);

class _$FinishReasonMeta {
  const _$FinishReasonMeta();
  FinishReason get CONTENT_FILTERED => _$CONTENT_FILTERED;
  FinishReason get ERROR => _$ERROR;
  FinishReason get SUCCESS => _$SUCCESS;
  FinishReason valueOf(String name) => _$valueOf(name);
  BuiltSet<FinishReason> get values => _$values;
}

abstract class _$FinishReasonMixin {
  // ignore: non_constant_identifier_names
  _$FinishReasonMeta get FinishReason => const _$FinishReasonMeta();
}

Serializer<FinishReason> _$finishReasonSerializer =
    new _$FinishReasonSerializer();

class _$FinishReasonSerializer implements PrimitiveSerializer<FinishReason> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CONTENT_FILTERED': 'CONTENT_FILTERED',
    'ERROR': 'ERROR',
    'SUCCESS': 'SUCCESS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CONTENT_FILTERED': 'CONTENT_FILTERED',
    'ERROR': 'ERROR',
    'SUCCESS': 'SUCCESS',
  };

  @override
  final Iterable<Type> types = const <Type>[FinishReason];
  @override
  final String wireName = 'FinishReason';

  @override
  Object serialize(Serializers serializers, FinishReason object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FinishReason deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FinishReason.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
