//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2004.g.dart';

/// InlineResponse2004
///
/// Properties:
/// * [image] - The generated image, encoded to base64.
/// * [finishReason] - The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and has been blurred as a result.
/// * [seed] - The seed used as random noise for this generation.
@BuiltValue()
abstract class InlineResponse2004
    implements Built<InlineResponse2004, InlineResponse2004Builder> {
  /// The generated image, encoded to base64.
  @BuiltValueField(wireName: r'image')
  String get image;

  /// The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and has been blurred as a result.
  @BuiltValueField(wireName: r'finish_reason')
  InlineResponse2004FinishReasonEnum get finishReason;
  // enum finishReasonEnum {  CONTENT_FILTERED,  SUCCESS,  };

  /// The seed used as random noise for this generation.
  @BuiltValueField(wireName: r'seed')
  num? get seed;

  InlineResponse2004._();

  factory InlineResponse2004([void updates(InlineResponse2004Builder b)]) =
      _$InlineResponse2004;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InlineResponse2004Builder b) => b..seed = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<InlineResponse2004> get serializer =>
      _$InlineResponse2004Serializer();
}

class _$InlineResponse2004Serializer
    implements PrimitiveSerializer<InlineResponse2004> {
  @override
  final Iterable<Type> types = const [InlineResponse2004, _$InlineResponse2004];

  @override
  final String wireName = r'InlineResponse2004';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InlineResponse2004 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'image';
    yield serializers.serialize(
      object.image,
      specifiedType: const FullType(String),
    );
    yield r'finish_reason';
    yield serializers.serialize(
      object.finishReason,
      specifiedType: const FullType(InlineResponse2004FinishReasonEnum),
    );
    if (object.seed != null) {
      yield r'seed';
      yield serializers.serialize(
        object.seed,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InlineResponse2004 object, {
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
    required InlineResponse2004Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.image = valueDes;
          break;
        case r'finish_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InlineResponse2004FinishReasonEnum),
          ) as InlineResponse2004FinishReasonEnum;
          result.finishReason = valueDes;
          break;
        case r'seed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.seed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InlineResponse2004 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InlineResponse2004Builder();
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

class InlineResponse2004FinishReasonEnum extends EnumClass {
  /// The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and has been blurred as a result.
  @BuiltValueEnumConst(wireName: r'CONTENT_FILTERED')
  static const InlineResponse2004FinishReasonEnum CONTENT_FILTERED =
      _$inlineResponse2004FinishReasonEnum_CONTENT_FILTERED;

  /// The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and has been blurred as a result.
  @BuiltValueEnumConst(wireName: r'SUCCESS', fallback: true)
  static const InlineResponse2004FinishReasonEnum SUCCESS =
      _$inlineResponse2004FinishReasonEnum_SUCCESS;

  static Serializer<InlineResponse2004FinishReasonEnum> get serializer =>
      _$inlineResponse2004FinishReasonEnumSerializer;

  const InlineResponse2004FinishReasonEnum._(String name) : super(name);

  static BuiltSet<InlineResponse2004FinishReasonEnum> get values =>
      _$inlineResponse2004FinishReasonEnumValues;
  static InlineResponse2004FinishReasonEnum valueOf(String name) =>
      _$inlineResponse2004FinishReasonEnumValueOf(name);
}
