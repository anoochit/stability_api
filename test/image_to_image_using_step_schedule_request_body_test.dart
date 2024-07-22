import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for ImageToImageUsingStepScheduleRequestBody
void main() {
  final instance = ImageToImageUsingStepScheduleRequestBodyBuilder();
  // TODO add properties to the builder and call build()

  group(ImageToImageUsingStepScheduleRequestBody, () {
    // An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \"land, ground, dirt, grass\" text_prompts[1][weight]: -0.9 ```
    // BuiltList<TextPrompt> textPrompts
    test('to test the property `textPrompts`', () async {
      // TODO
    });

    // Image used to initialize the diffusion process, in lieu of random noise.
    // Uint8List initImage
    test('to test the property `initImage`', () async {
      // TODO
    });

    // How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
    // num cfgScale (default value: 7)
    test('to test the property `cfgScale`', () async {
      // TODO
    });

    // ClipGuidancePreset clipGuidancePreset
    test('to test the property `clipGuidancePreset`', () async {
      // TODO
    });

    // Sampler sampler
    test('to test the property `sampler`', () async {
      // TODO
    });

    // Number of images to generate
    // int samples (default value: 1)
    test('to test the property `samples`', () async {
      // TODO
    });

    // Random noise seed (omit this option or use `0` for a random seed)
    // int seed (default value: 0)
    test('to test the property `seed`', () async {
      // TODO
    });

    // Number of diffusion steps to run.
    // int steps (default value: 30)
    test('to test the property `steps`', () async {
      // TODO
    });

    // StylePreset stylePreset
    test('to test the property `stylePreset`', () async {
      // TODO
    });

    // Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
    // JsonObject extras
    test('to test the property `extras`', () async {
      // TODO
    });

    // InitImageMode initImageMode
    test('to test the property `initImageMode`', () async {
      // TODO
    });

    // Skips a proportion of the start of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.  (e.g. a value of `0` would simply return you the init_image, where a value of `1` would return you a completely different image.)
    // num stepScheduleStart (default value: 0.65)
    test('to test the property `stepScheduleStart`', () async {
      // TODO
    });

    // Skips a proportion of the end of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.
    // num stepScheduleEnd
    test('to test the property `stepScheduleEnd`', () async {
      // TODO
    });
  });
}
