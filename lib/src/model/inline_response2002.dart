//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2002.g.dart';

/// InlineResponse2002
///
/// Properties:
/// * [image] - The generated image, encoded to base64.
/// * [finishReason] - The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and has been blurred as a result.
/// * [seed] - The seed used as random noise for this generation.
@BuiltValue()
abstract class InlineResponse2002
    implements Built<InlineResponse2002, InlineResponse2002Builder> {
  /// The generated image, encoded to base64.
  @BuiltValueField(wireName: r'image')
  String get image;

  /// The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and has been blurred as a result.
  @BuiltValueField(wireName: r'finish_reason')
  InlineResponse2002FinishReasonEnum get finishReason;
  // enum finishReasonEnum {  SUCCESS,  CONTENT_FILTERED,  };

  /// The seed used as random noise for this generation.
  @BuiltValueField(wireName: r'seed')
  num? get seed;

  InlineResponse2002._();

  factory InlineResponse2002([void updates(InlineResponse2002Builder b)]) =
      _$InlineResponse2002;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InlineResponse2002Builder b) => b..seed = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<InlineResponse2002> get serializer =>
      _$InlineResponse2002Serializer();
}

class _$InlineResponse2002Serializer
    implements PrimitiveSerializer<InlineResponse2002> {
  @override
  final Iterable<Type> types = const [InlineResponse2002, _$InlineResponse2002];

  @override
  final String wireName = r'InlineResponse2002';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InlineResponse2002 object, {
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
      specifiedType: const FullType(InlineResponse2002FinishReasonEnum),
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
    InlineResponse2002 object, {
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
    required InlineResponse2002Builder result,
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
            specifiedType: const FullType(InlineResponse2002FinishReasonEnum),
          ) as InlineResponse2002FinishReasonEnum;
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
  InlineResponse2002 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InlineResponse2002Builder();
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

class InlineResponse2002FinishReasonEnum extends EnumClass {
  /// The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and has been blurred as a result.
  @BuiltValueEnumConst(wireName: r'SUCCESS')
  static const InlineResponse2002FinishReasonEnum SUCCESS =
      _$inlineResponse2002FinishReasonEnum_SUCCESS;

  /// The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and has been blurred as a result.
  @BuiltValueEnumConst(wireName: r'CONTENT_FILTERED', fallback: true)
  static const InlineResponse2002FinishReasonEnum CONTENT_FILTERED =
      _$inlineResponse2002FinishReasonEnum_CONTENT_FILTERED;

  static Serializer<InlineResponse2002FinishReasonEnum> get serializer =>
      _$inlineResponse2002FinishReasonEnumSerializer;

  const InlineResponse2002FinishReasonEnum._(String name) : super(name);

  static BuiltSet<InlineResponse2002FinishReasonEnum> get values =>
      _$inlineResponse2002FinishReasonEnumValues;
  static InlineResponse2002FinishReasonEnum valueOf(String name) =>
      _$inlineResponse2002FinishReasonEnumValueOf(name);
}
