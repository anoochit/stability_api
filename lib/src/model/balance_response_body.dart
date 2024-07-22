//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance_response_body.g.dart';

/// BalanceResponseBody
///
/// Properties:
/// * [credits] - The balance of the account/organization associated with the API key
@BuiltValue()
abstract class BalanceResponseBody
    implements Built<BalanceResponseBody, BalanceResponseBodyBuilder> {
  /// The balance of the account/organization associated with the API key
  @BuiltValueField(wireName: r'credits')
  double get credits;

  BalanceResponseBody._();

  factory BalanceResponseBody([void updates(BalanceResponseBodyBuilder b)]) =
      _$BalanceResponseBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BalanceResponseBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BalanceResponseBody> get serializer =>
      _$BalanceResponseBodySerializer();
}

class _$BalanceResponseBodySerializer
    implements PrimitiveSerializer<BalanceResponseBody> {
  @override
  final Iterable<Type> types = const [
    BalanceResponseBody,
    _$BalanceResponseBody
  ];

  @override
  final String wireName = r'BalanceResponseBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BalanceResponseBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'credits';
    yield serializers.serialize(
      object.credits,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BalanceResponseBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BalanceResponseBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.credits = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BalanceResponseBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BalanceResponseBodyBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
