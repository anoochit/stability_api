//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'engine.g.dart';

/// Engine
///
/// Properties:
/// * [description]
/// * [id] - Unique identifier for the engine
/// * [name] - Name of the engine
/// * [type] - The type of content this engine produces
@BuiltValue()
abstract class Engine implements Built<Engine, EngineBuilder> {
  @BuiltValueField(wireName: r'description')
  String get description;

  /// Unique identifier for the engine
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Name of the engine
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The type of content this engine produces
  @BuiltValueField(wireName: r'type')
  EngineTypeEnum get type;
  // enum typeEnum {  AUDIO,  CLASSIFICATION,  PICTURE,  STORAGE,  TEXT,  VIDEO,  };

  Engine._();

  factory Engine([void updates(EngineBuilder b)]) = _$Engine;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EngineBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Engine> get serializer => _$EngineSerializer();
}

class _$EngineSerializer implements PrimitiveSerializer<Engine> {
  @override
  final Iterable<Type> types = const [Engine, _$Engine];

  @override
  final String wireName = r'Engine';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Engine object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
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
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(EngineTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Engine object, {
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
    required EngineBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EngineTypeEnum),
          ) as EngineTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Engine deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EngineBuilder();
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

class EngineTypeEnum extends EnumClass {
  /// The type of content this engine produces
  @BuiltValueEnumConst(wireName: r'AUDIO')
  static const EngineTypeEnum AUDIO = _$engineTypeEnum_AUDIO;

  /// The type of content this engine produces
  @BuiltValueEnumConst(wireName: r'CLASSIFICATION')
  static const EngineTypeEnum CLASSIFICATION = _$engineTypeEnum_CLASSIFICATION;

  /// The type of content this engine produces
  @BuiltValueEnumConst(wireName: r'PICTURE')
  static const EngineTypeEnum PICTURE = _$engineTypeEnum_PICTURE;

  /// The type of content this engine produces
  @BuiltValueEnumConst(wireName: r'STORAGE')
  static const EngineTypeEnum STORAGE = _$engineTypeEnum_STORAGE;

  /// The type of content this engine produces
  @BuiltValueEnumConst(wireName: r'TEXT')
  static const EngineTypeEnum TEXT = _$engineTypeEnum_TEXT;

  /// The type of content this engine produces
  @BuiltValueEnumConst(wireName: r'VIDEO', fallback: true)
  static const EngineTypeEnum VIDEO = _$engineTypeEnum_VIDEO;

  static Serializer<EngineTypeEnum> get serializer =>
      _$engineTypeEnumSerializer;

  const EngineTypeEnum._(String name) : super(name);

  static BuiltSet<EngineTypeEnum> get values => _$engineTypeEnumValues;
  static EngineTypeEnum valueOf(String name) => _$engineTypeEnumValueOf(name);
}
