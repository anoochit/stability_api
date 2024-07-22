import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

/// tests for GenerateApi
void main() {
  final instance = StabilityApi().getGenerateApi();

  group(GenerateApi, () {
    // Stable Image Core
    //
    // Our primary service for text-to-image generation, Stable Image Core represents the best quality achievable at high  speed. No prompt engineering is required! Try asking for a style, a scene, or a character, and see what you get.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=yXhs626oZdr1)  ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.  The body of the request should include: - `prompt`  The body may optionally include: - `aspect_ratio` - `negative_prompt` - `seed` - `style_preset` - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 1.5 megapixels.  ### Credits Flat rate of 3 credits per successful generation.  You will not be charged for failed generations.
    //
    //Future<Uint8List> v2betaStableImageGenerateCorePost(String authorization, String contentType, String accept, String prompt, { String aspectRatio, String negativePrompt, num seed, String stylePreset, String outputFormat }) async
    test('test v2betaStableImageGenerateCorePost', () async {
      // TODO
    });

    // Stable Diffusion 3
    //
    // Generate an image using a Stable Diffusion 3 model: - SD3 Medium - the 2 billion parameter model - SD3 Large - the 8 billion parameter model - SD3 Large Turbo - the 8 billion parameter model with a faster inference time   This API is powered by [Fireworks AI](https://fireworks.ai/).  API status can be reviewed [here](https://readme.fireworks.ai/page/application-status).   ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to one of the following sites:     - [![Open Fireworks Playground](https://platform.stability.ai/svg/fireworks.svg)](https://fireworks.ai/models/stability/sd3) - [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/SD3_API.ipynb)   ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`.  The accept header should be set to one of the following: - `image/_*` to receive the image in the format specified by the `output_format` parameter. - `application/json` to receive the image encoded as base64 in a JSON response.  #### **Generating with a prompt** Commonly referred to as **text-to-image**, this mode generates an image from text alone. While the only required   parameter is the `prompt`, it also supports an `aspect_ratio` parameter which can be used to control the  aspect ratio of the generated image.  #### **Generating with a prompt *and* an image** Commonly referred to as **image-to-image**, this mode also generates an image from text but uses an existing image as the starting point. The required parameters are: - `prompt` - text to generate the image from - `image` - the image to use as the starting point for the generation - `strength` - controls how much influence the `image` parameter has on the output image - `mode` - must be set to `image-to-image`  > **Note:** maximum request size is 10MiB.  #### **Optional Parameters:** Both modes support the following optional parameters: - `model` - the model to use (SD3 Medium, SD3 Large, or SD3 Large Turbo) - `output_format` - the the format of the output image - `seed` - the randomness seed to use for the generation - `negative_prompt` - keywords of what you **do not** wish to see in the output image  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 1MP. The default resolution is 1024x1024.  ### Credits - SD3 Medium: Flat rate of 3.5 credits per successful generation. - SD3 Large: Flat rate of 6.5 credits per successful generation. - SD3 Large Turbo: Flat rate of 4 credits per successful generation.  As always, you will not be charged for failed generations.
    //
    //Future<Uint8List> v2betaStableImageGenerateSd3Post(String authorization, String contentType, String accept, String prompt, { String mode, MultipartFile image, num strength, String aspectRatio, String model, num seed, String outputFormat, String negativePrompt }) async
    test('test v2betaStableImageGenerateSd3Post', () async {
      // TODO
    });

    // Stable Image Ultra
    //
    // Our most advanced text to image generation service, Stable Image Ultra creates the highest quality images with unprecedented prompt understanding. Ultra excels in typography, complex compositions, dynamic lighting,  vibrant hues, and overall cohesion and structure of an art piece. Made from the most advanced models, including Stable Diffusion 3, Ultra offers the best of the Stable Diffusion ecosystem.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=yXhs626oZdr1)  ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`.  The accept header should be set to one of the following: - `image/_*` to receive the image in the format specified by the `output_format` parameter. - `application/json` to receive the image in the format specified by the `output_format` parameter, but encoded to base64 in a JSON response.  The only required parameter is the `prompt` field, which should contain the text prompt for the image generation.  > **Note:** for the full list of optional parameters, please see the request schema below.  ### Output The resolution of the generated image will be 1 megapixel. The default resolution is 1024x1024.  ### Credits The Ultra service uses 8 credits per successful result. You will not be charged for failed results.
    //
    //Future<Uint8List> v2betaStableImageGenerateUltraPost(String authorization, String contentType, String accept, String prompt, { String negativePrompt, String aspectRatio, num seed, String outputFormat }) async
    test('test v2betaStableImageGenerateUltraPost', () async {
      // TODO
    });
  });
}
