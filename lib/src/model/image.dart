//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image.g.dart';

/// Image
///
/// Properties:
/// * [base64] - Image encoded in base64
/// * [finishReason]
/// * [seed] - The seed associated with this image
@BuiltValue()
abstract class Image implements Built<Image, ImageBuilder> {
  /// Image encoded in base64
  @BuiltValueField(wireName: r'base64')
  String? get base64;

  @BuiltValueField(wireName: r'finishReason')
  ImageFinishReasonEnum? get finishReason;
  // enum finishReasonEnum {  CONTENT_FILTERED,  ERROR,  SUCCESS,  };

  /// The seed associated with this image
  @BuiltValueField(wireName: r'seed')
  num? get seed;

  Image._();

  factory Image([void updates(ImageBuilder b)]) = _$Image;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Image> get serializer => _$ImageSerializer();
}

class _$ImageSerializer implements PrimitiveSerializer<Image> {
  @override
  final Iterable<Type> types = const [Image, _$Image];

  @override
  final String wireName = r'Image';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Image object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.base64 != null) {
      yield r'base64';
      yield serializers.serialize(
        object.base64,
        specifiedType: const FullType(String),
      );
    }
    if (object.finishReason != null) {
      yield r'finishReason';
      yield serializers.serialize(
        object.finishReason,
        specifiedType: const FullType(ImageFinishReasonEnum),
      );
    }
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
    Image object, {
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
    required ImageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'base64':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.base64 = valueDes;
          break;
        case r'finishReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImageFinishReasonEnum),
          ) as ImageFinishReasonEnum;
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
  Image deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageBuilder();
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

class ImageFinishReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CONTENT_FILTERED')
  static const ImageFinishReasonEnum CONTENT_FILTERED =
      _$imageFinishReasonEnum_CONTENT_FILTERED;
  @BuiltValueEnumConst(wireName: r'ERROR')
  static const ImageFinishReasonEnum ERROR = _$imageFinishReasonEnum_ERROR;
  @BuiltValueEnumConst(wireName: r'SUCCESS', fallback: true)
  static const ImageFinishReasonEnum SUCCESS = _$imageFinishReasonEnum_SUCCESS;

  static Serializer<ImageFinishReasonEnum> get serializer =>
      _$imageFinishReasonEnumSerializer;

  const ImageFinishReasonEnum._(String name) : super(name);

  static BuiltSet<ImageFinishReasonEnum> get values =>
      _$imageFinishReasonEnumValues;
  static ImageFinishReasonEnum valueOf(String name) =>
      _$imageFinishReasonEnumValueOf(name);
}
