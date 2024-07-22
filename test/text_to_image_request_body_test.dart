import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for TextToImageRequestBody
void main() {
  final instance = TextToImageRequestBodyBuilder();
  // TODO add properties to the builder and call build()

  group(TextToImageRequestBody, () {
    // An array of text prompts to use for generation.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as:  ``` \"text_prompts\": [   {     \"text\": \"A lighthouse on a cliff\",     \"weight\": 0.5   } ] ```
    // BuiltList<TextPrompt> textPrompts
    test('to test the property `textPrompts`', () async {
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

    // Height of the image to generate, in pixels, in an increment divisible by 64.
    // int height (default value: 512)
    test('to test the property `height`', () async {
      // TODO
    });

    // Width of the image to generate, in pixels, in an increment divisible by 64.
    // int width (default value: 512)
    test('to test the property `width`', () async {
      // TODO
    });
  });
}
