import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

/// tests for UpscaleApi
void main() {
  final instance = StabilityApi().getUpscaleApi();

  group(UpscaleApi, () {
    // Conservative
    //
    // Takes images between 64x64 and 1 megapixel and upscales them all the way to 4K resolution. Put more generally, it can upscale images ~20-40x times while preserving all aspects. Conservative Upscale minimizes alterations to the image and should not be used to reimagine an image.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=t1Q4w2uvvza0)  ### How to use  Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.    The body of the request must include: - `image` - `prompt`  Optionally, the body of the request may also include: - `negative_prompt` - `seed` - `output_format` - `creativity`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 4 megapixels.  ### Credits Flat rate of 25 credits per successful generation.  You will not be charged for failed generations.
    //
    //Future<Uint8List> v2betaStableImageUpscaleConservativePost(String authorization, String contentType, String accept, MultipartFile image, String prompt, { String negativePrompt, num seed, String outputFormat, num creativity }) async
    test('test v2betaStableImageUpscaleConservativePost', () async {
      // TODO
    });

    // Start Creative Upscale
    //
    // Takes images between 64x64 and 1 megapixel and upscales them all the way to **4K** resolution.  Put more  generally, it can upscale images ~20-40x times while preserving, and often enhancing, quality.  Creative Upscale **works best on highly degraded images and is not for photos of 1mp or above** as it performs  heavy reimagining (controlled by creativity scale).  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=QXxi9tfI425t)   ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`.  The body of the request should include: - `image` - `prompt`  The body may optionally include: - `seed` - `negative_prompt` - `output_format` - `creativity`  > **Note:** for more details about these parameters please see the request schema below.  After invoking this endpoint with the required parameters, use the `id` in the response to poll for results at the [upscale/result/{id}](#tag/Upscale/paths/~1v2beta~1stable-image~1upscale~1creative~1result~1%7Bid%7D/get) endpoint.  Rate-limiting or other errors may occur if you poll more than once every 10 seconds.  ### Credits Flat rate of 25 credits per successful generation.  You will not be charged for failed generations.
    //
    //Future<InlineResponse200> v2betaStableImageUpscaleCreativePost(String authorization, String contentType, MultipartFile image, String prompt, { String negativePrompt, String outputFormat, num seed, num creativity }) async
    test('test v2betaStableImageUpscaleCreativePost', () async {
      // TODO
    });

    // Fetch Creative Upscale result
    //
    // Fetch the result of an upscale generation by ID.   Make sure to use the same API key to fetch the generation result that you used to create the generation,  otherwise you will receive a `404` response.  ### How to use Please invoke this endpoint with a `GET` request.  The headers of the request must include an API key in the `authorization` field and the ID of your generation must be in the path.  ### How is progress reported? Your generation is either `in-progress` (i.e. status code `202`) or it is complete (i.e. status code `200`).  We may add more fine-grained progress reporting in the future (e.g. a numerical progress).  ### How long are results stored? Results are stored for 24 hours after generation. After that, the results are deleted.
    //
    //Future<Uint8List> v2betaStableImageUpscaleCreativeResultIdGet(String id, String authorization, String accept) async
    test('test v2betaStableImageUpscaleCreativeResultIdGet', () async {
      // TODO
    });
  });
}
