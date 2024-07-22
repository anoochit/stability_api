//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:stability_api/src/model/text_prompt.dart';
import 'package:stability_api/src/model/style_preset.dart';
import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';
import 'package:stability_api/src/model/generation_request_optional_params.dart';
import 'package:stability_api/src/model/clip_guidance_preset.dart';
import 'package:stability_api/src/model/sampler.dart';
import 'package:stability_api/src/model/init_image_mode.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_to_image_using_image_strength_request_body.g.dart';

/// ImageToImageUsingImageStrengthRequestBody
///
/// Properties:
/// * [textPrompts] - An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \"land, ground, dirt, grass\" text_prompts[1][weight]: -0.9 ```
/// * [initImage] - Image used to initialize the diffusion process, in lieu of random noise.
/// * [cfgScale] - How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
/// * [clipGuidancePreset]
/// * [sampler]
/// * [samples] - Number of images to generate
/// * [seed] - Random noise seed (omit this option or use `0` for a random seed)
/// * [steps] - Number of diffusion steps to run.
/// * [stylePreset]
/// * [extras] - Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
/// * [initImageMode]
/// * [imageStrength] - How much influence the `init_image` has on the diffusion process. Values close to `1` will yield images very similar to the `init_image` while values close to `0` will yield images wildly different than the `init_image`. The behavior of this is meant to mirror DreamStudio's \"Image Strength\" slider.  <br/> <br/> This parameter is just an alternate way to set `step_schedule_start`, which is done via the calculation `1 - image_strength`. For example, passing in an Image Strength of 35% (`0.35`) would result in a `step_schedule_start` of `0.65`.
@BuiltValue()
abstract class ImageToImageUsingImageStrengthRequestBody
    implements
        GenerationRequestOptionalParams,
        Built<ImageToImageUsingImageStrengthRequestBody,
            ImageToImageUsingImageStrengthRequestBodyBuilder> {
  @BuiltValueField(wireName: r'init_image_mode')
  InitImageMode? get initImageMode;
  // enum initImageModeEnum {  IMAGE_STRENGTH,  STEP_SCHEDULE,  };

  /// Image used to initialize the diffusion process, in lieu of random noise.
  @BuiltValueField(wireName: r'init_image')
  Uint8List get initImage;

  /// An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \"land, ground, dirt, grass\" text_prompts[1][weight]: -0.9 ```
  @BuiltValueField(wireName: r'text_prompts')
  BuiltList<TextPrompt> get textPrompts;

  /// How much influence the `init_image` has on the diffusion process. Values close to `1` will yield images very similar to the `init_image` while values close to `0` will yield images wildly different than the `init_image`. The behavior of this is meant to mirror DreamStudio's \"Image Strength\" slider.  <br/> <br/> This parameter is just an alternate way to set `step_schedule_start`, which is done via the calculation `1 - image_strength`. For example, passing in an Image Strength of 35% (`0.35`) would result in a `step_schedule_start` of `0.65`.
  @BuiltValueField(wireName: r'image_strength')
  double? get imageStrength;

  ImageToImageUsingImageStrengthRequestBody._();

  factory ImageToImageUsingImageStrengthRequestBody(
          [void updates(ImageToImageUsingImageStrengthRequestBodyBuilder b)]) =
      _$ImageToImageUsingImageStrengthRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImageToImageUsingImageStrengthRequestBodyBuilder b) => b
    ..seed = 0
    ..cfgScale = 7
    ..imageStrength = 0.35
    ..steps = 30
    ..samples = 1;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImageToImageUsingImageStrengthRequestBody> get serializer =>
      _$ImageToImageUsingImageStrengthRequestBodySerializer();
}

class _$ImageToImageUsingImageStrengthRequestBodySerializer
    implements PrimitiveSerializer<ImageToImageUsingImageStrengthRequestBody> {
  @override
  final Iterable<Type> types = const [
    ImageToImageUsingImageStrengthRequestBody,
    _$ImageToImageUsingImageStrengthRequestBody
  ];

  @override
  final String wireName = r'ImageToImageUsingImageStrengthRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImageToImageUsingImageStrengthRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.initImageMode != null) {
      yield r'init_image_mode';
      yield serializers.serialize(
        object.initImageMode,
        specifiedType: const FullType(InitImageMode),
      );
    }
    yield r'init_image';
    yield serializers.serialize(
      object.initImage,
      specifiedType: const FullType(Uint8List),
    );
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
    if (object.imageStrength != null) {
      yield r'image_strength';
      yield serializers.serialize(
        object.imageStrength,
        specifiedType: const FullType(double),
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
    ImageToImageUsingImageStrengthRequestBody object, {
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
    required ImageToImageUsingImageStrengthRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'init_image_mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InitImageMode),
          ) as InitImageMode;
          result.initImageMode = valueDes;
          break;
        case r'init_image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Uint8List),
          ) as Uint8List;
          result.initImage = valueDes;
          break;
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
        case r'image_strength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.imageStrength = valueDes;
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
  ImageToImageUsingImageStrengthRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageToImageUsingImageStrengthRequestBodyBuilder();
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
