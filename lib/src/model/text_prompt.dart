//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'text_prompt.g.dart';

/// Text prompt for image generation
///
/// Properties:
/// * [text] - The prompt itself
/// * [weight] - Weight of the prompt (use negative numbers for negative prompts)
@BuiltValue()
abstract class TextPrompt implements Built<TextPrompt, TextPromptBuilder> {
  /// The prompt itself
  @BuiltValueField(wireName: r'text')
  String get text;

  /// Weight of the prompt (use negative numbers for negative prompts)
  @BuiltValueField(wireName: r'weight')
  double? get weight;

  TextPrompt._();

  factory TextPrompt([void updates(TextPromptBuilder b)]) = _$TextPrompt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TextPromptBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TextPrompt> get serializer => _$TextPromptSerializer();
}

class _$TextPromptSerializer implements PrimitiveSerializer<TextPrompt> {
  @override
  final Iterable<Type> types = const [TextPrompt, _$TextPrompt];

  @override
  final String wireName = r'TextPrompt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TextPrompt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.weight != null) {
      yield r'weight';
      yield serializers.serialize(
        object.weight,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TextPrompt object, {
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
    required TextPromptBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.weight = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TextPrompt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TextPromptBuilder();
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
