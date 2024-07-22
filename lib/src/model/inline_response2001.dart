//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2001.g.dart';

/// InlineResponse2001
///
/// Properties:
/// * [video] - The generated video, encoded to base64.
/// * [finishReason] - The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and one or more frames have been blurred as a result.
/// * [seed] - The seed used as random noise for this generation.
@BuiltValue()
abstract class InlineResponse2001
    implements Built<InlineResponse2001, InlineResponse2001Builder> {
  /// The generated video, encoded to base64.
  @BuiltValueField(wireName: r'video')
  String get video;

  /// The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and one or more frames have been blurred as a result.
  @BuiltValueField(wireName: r'finish_reason')
  InlineResponse2001FinishReasonEnum get finishReason;
  // enum finishReasonEnum {  SUCCESS,  CONTENT_FILTERED,  };

  /// The seed used as random noise for this generation.
  @BuiltValueField(wireName: r'seed')
  num? get seed;

  InlineResponse2001._();

  factory InlineResponse2001([void updates(InlineResponse2001Builder b)]) =
      _$InlineResponse2001;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InlineResponse2001Builder b) => b..seed = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<InlineResponse2001> get serializer =>
      _$InlineResponse2001Serializer();
}

class _$InlineResponse2001Serializer
    implements PrimitiveSerializer<InlineResponse2001> {
  @override
  final Iterable<Type> types = const [InlineResponse2001, _$InlineResponse2001];

  @override
  final String wireName = r'InlineResponse2001';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InlineResponse2001 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'video';
    yield serializers.serialize(
      object.video,
      specifiedType: const FullType(String),
    );
    yield r'finish_reason';
    yield serializers.serialize(
      object.finishReason,
      specifiedType: const FullType(InlineResponse2001FinishReasonEnum),
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
    InlineResponse2001 object, {
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
    required InlineResponse2001Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'video':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.video = valueDes;
          break;
        case r'finish_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InlineResponse2001FinishReasonEnum),
          ) as InlineResponse2001FinishReasonEnum;
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
  InlineResponse2001 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InlineResponse2001Builder();
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

class InlineResponse2001FinishReasonEnum extends EnumClass {
  /// The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and one or more frames have been blurred as a result.
  @BuiltValueEnumConst(wireName: r'SUCCESS')
  static const InlineResponse2001FinishReasonEnum SUCCESS =
      _$inlineResponse2001FinishReasonEnum_SUCCESS;

  /// The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and one or more frames have been blurred as a result.
  @BuiltValueEnumConst(wireName: r'CONTENT_FILTERED', fallback: true)
  static const InlineResponse2001FinishReasonEnum CONTENT_FILTERED =
      _$inlineResponse2001FinishReasonEnum_CONTENT_FILTERED;

  static Serializer<InlineResponse2001FinishReasonEnum> get serializer =>
      _$inlineResponse2001FinishReasonEnumSerializer;

  const InlineResponse2001FinishReasonEnum._(String name) : super(name);

  static BuiltSet<InlineResponse2001FinishReasonEnum> get values =>
      _$inlineResponse2001FinishReasonEnumValues;
  static InlineResponse2001FinishReasonEnum valueOf(String name) =>
      _$inlineResponse2001FinishReasonEnumValueOf(name);
}
