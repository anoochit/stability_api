import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

/// tests for SDXLSD16Api
void main() {
  final instance = StabilityApi().getSDXLSD16Api();

  group(SDXLSD16Api, () {
    // Image-to-image with prompt
    //
    // Produce an image from an existing image using a text prompt.  ### How to control strength of generation To preserve only roughly 35% of the initial image, pass in either `init_image_mode=IMAGE_STRENGTH` and `image_strength=0.35` or `init_image_mode=STEP_SCHEDULE` and `step_schedule_start=0.65`.  Both of these are equivalent, however `init_image_mode=STEP_SCHEDULE` also lets you pass in `step_schedule_end`, which can provide an extra level of control for those who need it.  For more details, see the specific fields below.    > NOTE: Only **Version 1** engines will work with this endpoint.
    //
    //Future<InlineResponse2006> imageToImage(String engineId, BuiltList<TextPrompt> textPrompts, MultipartFile initImage, { String accept, String organization, String stabilityClientID, String stabilityClientVersion, InitImageMode initImageMode, double imageStrength, num stepScheduleStart, num stepScheduleEnd, num cfgScale, ClipGuidancePreset clipGuidancePreset, Sampler sampler, int samples, int seed, int steps, StylePreset stylePreset, JsonObject extras }) async
    test('test imageToImage', () async {
      // TODO
    });

    // Image-to-image with a mask
    //
    // Selectively modify portions of an image using a mask. The `mask` must be the same shape and size as the init image. This endpoint also supports `image` parameters with alpha channels.  See below for more details.   > NOTE: Only **Version 1** engines will work with this endpoint.
    //
    //Future<InlineResponse2006> masking(String engineId, MultipartFile initImage, String maskSource, BuiltList<TextPrompt> textPrompts, { String accept, String organization, String stabilityClientID, String stabilityClientVersion, MultipartFile maskImage, num cfgScale, ClipGuidancePreset clipGuidancePreset, Sampler sampler, int samples, int seed, int steps, StylePreset stylePreset, JsonObject extras }) async
    test('test masking', () async {
      // TODO
    });

    // Text-to-image
    //
    // Generate an image from a text prompt.  ### Using SDXL 1.0 Use `stable-diffusion-xl-1024-v1-0` as the `engine_id` of your request and pass in `height` & `width` as one of the following combinations: - 1024x1024 - 1152x896 - 896x1152 - 1216x832 - 1344x768 - 768x1344 - 1536x640 - 640x1536.   ### Using SD 1.6 Pass in `stable-diffusion-v1-6` as the `engine_id` of your request and ensure the `height` & `width` you pass in adhere to the following restrictions: - No dimension can be less than 320 pixels - No dimension can be greater than 1536 pixels  ### Using SD Beta Pass in `stable-diffusion-xl-beta-v2-2-2` as the `engine_id` of your request and ensure the `height` & `width` you pass in adhere to the following restrictions: - dimensions must be between 128x128 and 512x896 (or 896x512) - only one dimension can be greater than 512, but not both   > NOTE: Only **Version 1** engines will work with this endpoint.
    //
    //Future<InlineResponse2006> textToImage(String engineId, TextToImageRequestBody textToImageRequestBody, { String accept, String organization, String stabilityClientID, String stabilityClientVersion }) async
    test('test textToImage', () async {
      // TODO
    });

    // Image-to-image upscale
    //
    // Create a higher resolution version of an input image.  This operation outputs an image with a maximum pixel count of **4,194,304**. This is equivalent to dimensions such as `2048x2048` and `4096x1024`.  By default, the input image will be upscaled by a factor of 2.  For additional control over the output dimensions, a `width` or `height` parameter may be specified.
    //
    //Future<InlineResponse2006> upscaleImage(String engineId, MultipartFile image, { String accept, String organization, String stabilityClientID, String stabilityClientVersion, int width, int height }) async
    test('test upscaleImage', () async {
      // TODO
    });
  });
}
