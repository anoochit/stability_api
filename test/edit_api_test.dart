import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

/// tests for EditApi
void main() {
  final instance = StabilityApi().getEditApi();

  group(EditApi, () {
    // Erase
    //
    // The Erase service removes unwanted objects, such as blemishes on portraits or items on desks, using image masks.  The mask is provided in one of two ways:   1. Explicitly passing in a separate image via the `mask` parameter    2. Derived from the alpha channel of the `image` parameter.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=t1Q4w2uvvza0)  ### How to use  Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.    The body of the request must include: - `image`  Optionally, the body of the request may also include: - `mask` - `seed` - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 4 megapixels.  ### Credits Flat rate of 3 credits per successful generation.  You will not be charged for failed generations.
    //
    //Future<Uint8List> v2betaStableImageEditErasePost(String authorization, String contentType, String accept, MultipartFile image, { MultipartFile mask, num growMask, num seed, String outputFormat }) async
    test('test v2betaStableImageEditErasePost', () async {
      // TODO
    });

    // Inpaint
    //
    // Intelligently modify images by filling in or replacing specified areas with new content based on the content of a \"mask\" image.   The \"mask\" is provided in one of two ways:   1. Explicitly passing in a separate image via the `mask` parameter    2. Derived from the alpha channel of the `image` parameter.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=t1Q4w2uvvza0)  ### How to use  Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.    The body of the request must include: - `image` - `prompt`  Optionally, the body of the request may also include: - `mask` - `negative_prompt` - `seed` - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 4 megapixels.  ### Credits Flat rate of 3 credits per successful generation.  You will not be charged for failed generations.
    //
    //Future<Uint8List> v2betaStableImageEditInpaintPost(String authorization, String contentType, String accept, MultipartFile image, String prompt, { String negativePrompt, MultipartFile mask, num growMask, num seed, String outputFormat }) async
    test('test v2betaStableImageEditInpaintPost', () async {
      // TODO
    });

    // Outpaint
    //
    // The Outpaint service inserts additional content in an image to fill in the space in any direction.  Compared to other automated or manual attempts to expand the content in an image, the Outpaint service  should minimize artifacts and signs that the original image has been edited.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=bZ2yK7VQSgLw)  ### How to use  Please invoke this endpoint with a POST request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.    The body of the request must include: - `image`  Along with _at least one_ outpaint direction: - `left` - `right` - `up` - `down`  > **Note:** for best quality use outpaint direction values smaller or equal to your source image dimensions.      Each of these parameters should be set to a number between 0 and 2000, representing the number of pixels to outpaint in that direction.  Optionally, the body of the request may also include: - `prompt` - `seed` - `output_format` - `creativity`  > **Note:** for more details about these parameters please see the request schema below.  ### Credits Flat rate of 4 credits per successful generation.  You will not be charged for failed generations.
    //
    //Future<Uint8List> v2betaStableImageEditOutpaintPost(String authorization, String contentType, String accept, MultipartFile image, { int left, int right, int up, int down, num creativity, String prompt, num seed, String outputFormat }) async
    test('test v2betaStableImageEditOutpaintPost', () async {
      // TODO
    });

    // Remove Background
    //
    // The Remove Background service accurately segments the foreground from an image and implements  and removes the background.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=VHofb3LAVmqi)   ### How to use  Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.    The body of the request must include: - `image`  Optionally, the body of the request may also include: - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Credits Flat rate of 2 credits per successful generation.  You will not be charged for failed generations.
    //
    //Future<Uint8List> v2betaStableImageEditRemoveBackgroundPost(String authorization, String contentType, String accept, MultipartFile image, { String outputFormat }) async
    test('test v2betaStableImageEditRemoveBackgroundPost', () async {
      // TODO
    });

    // Search and Replace
    //
    // The Search and Replace service is a specific version of inpainting that does not require a mask.  Instead, users can leverage a `search_prompt` to identify an object in simple language to be replaced.  The service will automatically segment the object and replace it with the object requested in the prompt.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=0lDpGa2jAmAs)  ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.  The body of the request should include: - `image` - `prompt` - `search_prompt`  The body may optionally include: - `seed` - `negative_prompt` - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 4 megapixels.  ### Credits Flat rate of 4 credits per successful generation.  You will not be charged for failed generations.
    //
    //Future<Uint8List> v2betaStableImageEditSearchAndReplacePost(String authorization, String contentType, String accept, MultipartFile image, String prompt, String searchPrompt, { String negativePrompt, num growMask, num seed, String outputFormat }) async
    test('test v2betaStableImageEditSearchAndReplacePost', () async {
      // TODO
    });
  });
}
