import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

/// tests for V2alphaGenerationApi
void main() {
  final instance = StabilityApi().getV2alphaGenerationApi();

  group(V2alphaGenerationApi, () {
    // image-to-video
    //
    // Generate a short video based on an initial image with [Stable Video Diffusion](https://static1.squarespace.com/static/6213c340453c3f502425776e/t/655ce779b9d47d342a93c890/1700587395994/stable_video_diffusion.pdf), a latent video diffusion model.     ### How to generate a video Video generations are asynchronous, so after starting a generation use the `id` returned in the response to poll [/v2alpha/generation/image-to-video/result/{id}](#tag/v2alphageneration/paths/~1v2alpha~1generation~1image-to-video~1result~1%7Bid%7D/get) for results.  ### Price Flat rate of 20 cents per generation.
    //
    //Future<InlineResponse200> v2alphaGenerationImageToVideoPost(String authorization, String contentType, MultipartFile image, { num seed, num cfgScale, num motionBucketId }) async
    test('test v2alphaGenerationImageToVideoPost', () async {
      // TODO
    });

    // image-to-video/result
    //
    // Fetch the result of an image-to-video generation by ID. Make sure you use the same API key that you used to generate the video, otherwise you will receive a `404` response.  ### How is progress reported? Your generation is either `in-progress` (i.e. status code `202`) or it is complete (i.e. status code `200`).  We may add more fine-grained progress reporting in the future (e.g. a numerical progress).  ### How long are results stored? Results are stored for 24 hours after generation. After that, the results are deleted and you will need to  re-generate your video.
    //
    //Future<Uint8List> v2alphaGenerationImageToVideoResultIdGet(String id, String authorization, { String accept }) async
    test('test v2alphaGenerationImageToVideoResultIdGet', () async {
      // TODO
    });

    // stable-image/inpaint
    //
    // Inpaint an existing image, with or without a mask, using our latest-and-greatest inpainting model.  ### Search-and-Replace Mode This mode is ideal for individuals of all levels of skill in design. It can be used for straightforward  adjustments to images. The service will automatically mask the most appropriate object based on the contents of the `search_prompt`, and replace it with a generated result based on the `prompt`.  **How to use:** set the `mode` parameter to `search` and provide a short description of what to  search-and-replace in the `search_prompt` parameter.  ### Mask Mode This mode allows for precise control of generative fill tasks on an image, down to the level of  individual pixels. Design professionals can provide a `mask` for the section of the image to be replaced,  and use standard image prompting to describe the full image as it should appear after the editing.  The resulting image will incorporate all of the elements described in the `prompt`.  **How to use:** set the `mode` parameter to `mask` and either pass in an `image` with an alpha channel  or provide an explicit mask image to the `mask` parameter. If both are present the `mask` parameter will take precedence.  ### Price - Requests with `mode` set to `search` cost 4 cents. - Requests with `mode` set to `mask` cost 3 cents.
    //
    //Future<Uint8List> v2alphaGenerationStableImageInpaintPost(String authorization, String contentType, { String accept, String mode, String searchPrompt, MultipartFile image, String prompt, String negativePrompt, num seed, String outputFormat, MultipartFile mask }) async
    test('test v2alphaGenerationStableImageInpaintPost', () async {
      // TODO
    });

    // stable-image/upscale
    //
    // Takes images between 64x64 and 1 megapixel and upscales them all the way to **4K** resolution.  Put more  generally, it can upscale images ~20-40x times while preserving, and often enhancing, quality.  ### How to use   - Invoke this endpoint with the required parameters to start a generation   - Use that `id` in the response to poll for results at the [upscale/result/{id}](#tag/v2alphageneration/paths/~1v2alpha~1generation~1stable-image~1upscale~1result~1%7Bid%7D/get) endpoint     - Rate-limiting or other errors may occur if you poll more than once every 10 seconds      ### Price Flat rate of 25 cents per generation.
    //
    //Future<InlineResponse200> v2alphaGenerationStableImageUpscalePost(String authorization, String contentType, MultipartFile image, String prompt, { String negativePrompt, String outputFormat, num seed, num creativity }) async
    test('test v2alphaGenerationStableImageUpscalePost', () async {
      // TODO
    });

    // stable-image/upscale/result
    //
    // Fetch the result of an upscale generation by ID. Make sure to use the same API key to fetch the generation result that you used to create the generation, otherwise you will receive a `404` response.  ### How is progress reported? Your generation is either `in-progress` (i.e. status code `202`) or it is complete (i.e. status code `200`).  We may add more fine-grained progress reporting in the future (e.g. a numerical progress).  ### How long are results stored? Results are stored for 24 hours after generation. After that, the results are deleted.
    //
    //Future<Uint8List> v2alphaGenerationStableImageUpscaleResultIdGet(String id, String authorization, { String accept }) async
    test('test v2alphaGenerationStableImageUpscaleResultIdGet', () async {
      // TODO
    });
  });
}
