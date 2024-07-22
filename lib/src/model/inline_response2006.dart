//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:stability_api/src/model/image.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2006.g.dart';

/// An array of results from the generation request, where each image is a base64 encoded PNG.
///
/// Properties:
/// * [artifacts]
@BuiltValue()
abstract class InlineResponse2006
    implements Built<InlineResponse2006, InlineResponse2006Builder> {
  @BuiltValueField(wireName: r'artifacts')
  BuiltList<Image>? get artifacts;

  InlineResponse2006._();

  factory InlineResponse2006([void updates(InlineResponse2006Builder b)]) =
      _$InlineResponse2006;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InlineResponse2006Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InlineResponse2006> get serializer =>
      _$InlineResponse2006Serializer();
}

class _$InlineResponse2006Serializer
    implements PrimitiveSerializer<InlineResponse2006> {
  @override
  final Iterable<Type> types = const [InlineResponse2006, _$InlineResponse2006];

  @override
  final String wireName = r'InlineResponse2006';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InlineResponse2006 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.artifacts != null) {
      yield r'artifacts';
      yield serializers.serialize(
        object.artifacts,
        specifiedType: const FullType(BuiltList, [FullType(Image)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InlineResponse2006 object, {
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
    required InlineResponse2006Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'artifacts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Image)]),
          ) as BuiltList<Image>;
          result.artifacts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InlineResponse2006 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InlineResponse2006Builder();
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
