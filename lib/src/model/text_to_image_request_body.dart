//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:stability_api/src/model/text_prompt.dart';
import 'package:stability_api/src/model/style_preset.dart';
import 'package:built_collection/built_collection.dart';
import 'package:stability_api/src/model/generation_request_optional_params.dart';
import 'package:stability_api/src/model/clip_guidance_preset.dart';
import 'package:stability_api/src/model/sampler.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'text_to_image_request_body.g.dart';

/// TextToImageRequestBody
///
/// Properties:
/// * [textPrompts] - An array of text prompts to use for generation.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as:  ``` \"text_prompts\": [   {     \"text\": \"A lighthouse on a cliff\",     \"weight\": 0.5   } ] ```
/// * [cfgScale] - How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
/// * [clipGuidancePreset]
/// * [sampler]
/// * [samples] - Number of images to generate
/// * [seed] - Random noise seed (omit this option or use `0` for a random seed)
/// * [steps] - Number of diffusion steps to run.
/// * [stylePreset]
/// * [extras] - Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
/// * [height] - Height of the image to generate, in pixels, in an increment divisible by 64.
/// * [width] - Width of the image to generate, in pixels, in an increment divisible by 64.
@BuiltValue()
abstract class TextToImageRequestBody
    implements
        GenerationRequestOptionalParams,
        Built<TextToImageRequestBody, TextToImageRequestBodyBuilder> {
  /// An array of text prompts to use for generation.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as:  ``` \"text_prompts\": [   {     \"text\": \"A lighthouse on a cliff\",     \"weight\": 0.5   } ] ```
  @BuiltValueField(wireName: r'text_prompts')
  BuiltList<TextPrompt> get textPrompts;

  /// Width of the image to generate, in pixels, in an increment divisible by 64.
  @BuiltValueField(wireName: r'width')
  int? get width;

  /// Height of the image to generate, in pixels, in an increment divisible by 64.
  @BuiltValueField(wireName: r'height')
  int? get height;

  TextToImageRequestBody._();

  factory TextToImageRequestBody(
          [void updates(TextToImageRequestBodyBuilder b)]) =
      _$TextToImageRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TextToImageRequestBodyBuilder b) => b
    ..seed = 0
    ..cfgScale = 7
    ..width = 512
    ..steps = 30
    ..samples = 1
    ..height = 512;

  @BuiltValueSerializer(custom: true)
  static Serializer<TextToImageRequestBody> get serializer =>
      _$TextToImageRequestBodySerializer();
}

class _$TextToImageRequestBodySerializer
    implements PrimitiveSerializer<TextToImageRequestBody> {
  @override
  final Iterable<Type> types = const [
    TextToImageRequestBody,
    _$TextToImageRequestBody
  ];

  @override
  final String wireName = r'TextToImageRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TextToImageRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text_prompts';
    yield serializers.serialize(
      object.textPrompts,
      specifiedType: const FullType(BuiltList, [FullType(TextPrompt)]),
    );
    if (object.seed != null) {
      yield r'seed';
      yield serializers.serialize(
        object.seed,
        specifiedType: const FullType(int),
      );
    }
    if (object.cfgScale != null) {
      yield r'cfg_scale';
      yield serializers.serialize(
        object.cfgScale,
        specifiedType: const FullType(num),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(int),
      );
    }
    if (object.extras != null) {
      yield r'extras';
      yield serializers.serialize(
        object.extras,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.clipGuidancePreset != null) {
      yield r'clip_guidance_preset';
      yield serializers.serialize(
        object.clipGuidancePreset,
        specifiedType: const FullType(ClipGuidancePreset),
      );
    }
    if (object.stylePreset != null) {
      yield r'style_preset';
      yield serializers.serialize(
        object.stylePreset,
        specifiedType: const FullType(StylePreset),
      );
    }
    if (object.steps != null) {
      yield r'steps';
      yield serializers.serialize(
        object.steps,
        specifiedType: const FullType(int),
      );
    }
    if (object.samples != null) {
      yield r'samples';
      yield serializers.serialize(
        object.samples,
        specifiedType: const FullType(int),
      );
    }
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType(int),
      );
    }
    if (object.sampler != null) {
      yield r'sampler';
      yield serializers.serialize(
        object.sampler,
        specifiedType: const FullType(Sampler),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TextToImageRequestBody object, {
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
    required TextToImageRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text_prompts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TextPrompt)]),
          ) as BuiltList<TextPrompt>;
          result.textPrompts.replace(valueDes);
          break;
        case r'seed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seed = valueDes;
          break;
        case r'cfg_scale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.cfgScale = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.width = valueDes;
          break;
        case r'extras':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.extras = valueDes;
          break;
        case r'clip_guidance_preset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ClipGuidancePreset),
          ) as ClipGuidancePreset;
          result.clipGuidancePreset = valueDes;
          break;
        case r'style_preset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StylePreset),
          ) as StylePreset;
          result.stylePreset = valueDes;
          break;
        case r'steps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.steps = valueDes;
          break;
        case r'samples':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.samples = valueDes;
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.height = valueDes;
          break;
        case r'sampler':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Sampler),
          ) as Sampler;
          result.sampler = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TextToImageRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TextToImageRequestBodyBuilder();
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
