//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response404.g.dart';

/// InlineResponse404
///
/// Properties:
/// * [id] - A unique identifier associated with this error. Please include this in any [support tickets](https://stabilityplatform.freshdesk.com/support/tickets/new)  you file, as it will greatly assist us in diagnosing the root cause of the problem.
/// * [name] - Short-hand name for an error, useful for discriminating between errors with the same status code.
/// * [errors] - One or more error messages indicating what went wrong.
@BuiltValue()
abstract class InlineResponse404
    implements Built<InlineResponse404, InlineResponse404Builder> {
  /// A unique identifier associated with this error. Please include this in any [support tickets](https://stabilityplatform.freshdesk.com/support/tickets/new)  you file, as it will greatly assist us in diagnosing the root cause of the problem.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Short-hand name for an error, useful for discriminating between errors with the same status code.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// One or more error messages indicating what went wrong.
  @BuiltValueField(wireName: r'errors')
  BuiltList<String> get errors;

  InlineResponse404._();

  factory InlineResponse404([void updates(InlineResponse404Builder b)]) =
      _$InlineResponse404;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InlineResponse404Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InlineResponse404> get serializer =>
      _$InlineResponse404Serializer();
}

class _$InlineResponse404Serializer
    implements PrimitiveSerializer<InlineResponse404> {
  @override
  final Iterable<Type> types = const [InlineResponse404, _$InlineResponse404];

  @override
  final String wireName = r'InlineResponse404';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InlineResponse404 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'errors';
    yield serializers.serialize(
      object.errors,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InlineResponse404 object, {
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
    required InlineResponse404Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InlineResponse404 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InlineResponse404Builder();
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
