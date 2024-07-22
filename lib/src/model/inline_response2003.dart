//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2003.g.dart';

/// InlineResponse2003
///
/// Properties:
/// * [video] - The generated video, encoded to base64.
/// * [finishReason] - The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and one or more frames have been blurred as a result.
/// * [seed] - The seed used as random noise for this generation.
@BuiltValue()
abstract class InlineResponse2003
    implements Built<InlineResponse2003, InlineResponse2003Builder> {
  /// The generated video, encoded to base64.
  @BuiltValueField(wireName: r'video')
  String get video;

  /// The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and one or more frames have been blurred as a result.
  @BuiltValueField(wireName: r'finish_reason')
  InlineResponse2003FinishReasonEnum get finishReason;
  // enum finishReasonEnum {  CONTENT_FILTERED,  SUCCESS,  };

  /// The seed used as random noise for this generation.
  @BuiltValueField(wireName: r'seed')
  num? get seed;

  InlineResponse2003._();

  factory InlineResponse2003([void updates(InlineResponse2003Builder b)]) =
      _$InlineResponse2003;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InlineResponse2003Builder b) => b..seed = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<InlineResponse2003> get serializer =>
      _$InlineResponse2003Serializer();
}

class _$InlineResponse2003Serializer
    implements PrimitiveSerializer<InlineResponse2003> {
  @override
  final Iterable<Type> types = const [InlineResponse2003, _$InlineResponse2003];

  @override
  final String wireName = r'InlineResponse2003';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InlineResponse2003 object, {
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
      specifiedType: const FullType(InlineResponse2003FinishReasonEnum),
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
    InlineResponse2003 object, {
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
    required InlineResponse2003Builder result,
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
            specifiedType: const FullType(InlineResponse2003FinishReasonEnum),
          ) as InlineResponse2003FinishReasonEnum;
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
  InlineResponse2003 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InlineResponse2003Builder();
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

class InlineResponse2003FinishReasonEnum extends EnumClass {
  /// The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and one or more frames have been blurred as a result.
  @BuiltValueEnumConst(wireName: r'CONTENT_FILTERED')
  static const InlineResponse2003FinishReasonEnum CONTENT_FILTERED =
      _$inlineResponse2003FinishReasonEnum_CONTENT_FILTERED;

  /// The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and one or more frames have been blurred as a result.
  @BuiltValueEnumConst(wireName: r'SUCCESS', fallback: true)
  static const InlineResponse2003FinishReasonEnum SUCCESS =
      _$inlineResponse2003FinishReasonEnum_SUCCESS;

  static Serializer<InlineResponse2003FinishReasonEnum> get serializer =>
      _$inlineResponse2003FinishReasonEnumSerializer;

  const InlineResponse2003FinishReasonEnum._(String name) : super(name);

  static BuiltSet<InlineResponse2003FinishReasonEnum> get values =>
      _$inlineResponse2003FinishReasonEnumValues;
  static InlineResponse2003FinishReasonEnum valueOf(String name) =>
      _$inlineResponse2003FinishReasonEnumValueOf(name);
}
