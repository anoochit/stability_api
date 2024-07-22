# stability_api.api.V2alphaGenerationApi

## Load the API package
```dart
import 'package:stability_api/api.dart';
```

All URIs are relative to *https://api.stability.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2alphaGenerationImageToVideoPost**](V2alphaGenerationApi.md#v2alphagenerationimagetovideopost) | **POST** /v2alpha/generation/image-to-video | image-to-video
[**v2alphaGenerationImageToVideoResultIdGet**](V2alphaGenerationApi.md#v2alphagenerationimagetovideoresultidget) | **GET** /v2alpha/generation/image-to-video/result/{id} | image-to-video/result
[**v2alphaGenerationStableImageInpaintPost**](V2alphaGenerationApi.md#v2alphagenerationstableimageinpaintpost) | **POST** /v2alpha/generation/stable-image/inpaint | stable-image/inpaint
[**v2alphaGenerationStableImageUpscalePost**](V2alphaGenerationApi.md#v2alphagenerationstableimageupscalepost) | **POST** /v2alpha/generation/stable-image/upscale | stable-image/upscale
[**v2alphaGenerationStableImageUpscaleResultIdGet**](V2alphaGenerationApi.md#v2alphagenerationstableimageupscaleresultidget) | **GET** /v2alpha/generation/stable-image/upscale/result/{id} | stable-image/upscale/result


# **v2alphaGenerationImageToVideoPost**
> InlineResponse200 v2alphaGenerationImageToVideoPost(authorization, contentType, image, seed, cfgScale, motionBucketId)

image-to-video

Generate a short video based on an initial image with [Stable Video Diffusion](https://static1.squarespace.com/static/6213c340453c3f502425776e/t/655ce779b9d47d342a93c890/1700587395994/stable_video_diffusion.pdf), a latent video diffusion model.     ### How to generate a video Video generations are asynchronous, so after starting a generation use the `id` returned in the response to poll [/v2alpha/generation/image-to-video/result/{id}](#tag/v2alphageneration/paths/~1v2alpha~1generation~1image-to-video~1result~1%7Bid%7D/get) for results.  ### Price Flat rate of 20 cents per generation.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getV2alphaGenerationApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The source image used in the video generation process.  Supported Formats: - jpeg - png  Supported Dimensions: - 1024x576 - 576x1024 - 768x768
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final num cfgScale = 8.14; // num | How strongly the video sticks to the original image. Use lower values to allow the model more freedom to make changes and higher values to correct motion distortions.
final num motionBucketId = 8.14; // num | Lower values generally result in less motion in the output video, while higher values generally result in more motion. This parameter corresponds to the motion_bucket_id parameter from the [paper](https://static1.squarespace.com/static/6213c340453c3f502425776e/t/655ce779b9d47d342a93c890/1700587395994/stable_video_diffusion.pdf).

try {
    final response = api.v2alphaGenerationImageToVideoPost(authorization, contentType, image, seed, cfgScale, motionBucketId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling V2alphaGenerationApi->v2alphaGenerationImageToVideoPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **image** | **MultipartFile**| The source image used in the video generation process.  Supported Formats: - jpeg - png  Supported Dimensions: - 1024x576 - 576x1024 - 768x768 | 
 **seed** | **num**| A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.) | [optional] [default to 0]
 **cfgScale** | **num**| How strongly the video sticks to the original image. Use lower values to allow the model more freedom to make changes and higher values to correct motion distortions. | [optional] [default to 1.8]
 **motionBucketId** | **num**| Lower values generally result in less motion in the output video, while higher values generally result in more motion. This parameter corresponds to the motion_bucket_id parameter from the [paper](https://static1.squarespace.com/static/6213c340453c3f502425776e/t/655ce779b9d47d342a93c890/1700587395994/stable_video_diffusion.pdf). | [optional] [default to 127]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2alphaGenerationImageToVideoResultIdGet**
> Uint8List v2alphaGenerationImageToVideoResultIdGet(id, authorization, accept)

image-to-video/result

Fetch the result of an image-to-video generation by ID. Make sure you use the same API key that you used to generate the video, otherwise you will receive a `404` response.  ### How is progress reported? Your generation is either `in-progress` (i.e. status code `202`) or it is complete (i.e. status code `200`).  We may add more fine-grained progress reporting in the future (e.g. a numerical progress).  ### How long are results stored? Results are stored for 24 hours after generation. After that, the results are deleted and you will need to  re-generate your video.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getV2alphaGenerationApi();
final String id = id_example; // String | 
final String authorization = authorization_example; // String | 
final String accept = accept_example; // String | 

try {
    final response = api.v2alphaGenerationImageToVideoResultIdGet(id, authorization, accept);
    print(response);
} catch on DioException (e) {
    print('Exception when calling V2alphaGenerationApi->v2alphaGenerationImageToVideoResultIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**|  | 
 **accept** | **String**|  | [optional] [default to 'video/*']

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: video/mp4, application/json; type=video/mp4, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2alphaGenerationStableImageInpaintPost**
> Uint8List v2alphaGenerationStableImageInpaintPost(authorization, contentType, accept, mode, searchPrompt, image, prompt, negativePrompt, seed, outputFormat, mask)

stable-image/inpaint

Inpaint an existing image, with or without a mask, using our latest-and-greatest inpainting model.  ### Search-and-Replace Mode This mode is ideal for individuals of all levels of skill in design. It can be used for straightforward  adjustments to images. The service will automatically mask the most appropriate object based on the contents of the `search_prompt`, and replace it with a generated result based on the `prompt`.  **How to use:** set the `mode` parameter to `search` and provide a short description of what to  search-and-replace in the `search_prompt` parameter.  ### Mask Mode This mode allows for precise control of generative fill tasks on an image, down to the level of  individual pixels. Design professionals can provide a `mask` for the section of the image to be replaced,  and use standard image prompting to describe the full image as it should appear after the editing.  The resulting image will incorporate all of the elements described in the `prompt`.  **How to use:** set the `mode` parameter to `mask` and either pass in an `image` with an alpha channel  or provide an explicit mask image to the `mask` parameter. If both are present the `mask` parameter will take precedence.  ### Price - Requests with `mode` set to `search` cost 4 cents. - Requests with `mode` set to `mask` cost 3 cents.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getV2alphaGenerationApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final String accept = accept_example; // String | 
final String mode = mode_example; // String | Controls how the model decides which areas to inpaint and which areas to leave alone.    Specifying `mask` requires:   - Provide an explicit mask image in the `mask` parameter   - Use the alpha channel of the `image` parameter as the mask    Specifying `search` requires:   - Provide a small description of what to inpaint in the `search_prompt` parameter
final String searchPrompt = searchPrompt_example; // String | Short description of what to inpaint in the `image`.
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The image you wish to inpaint.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels
final String prompt = prompt_example; // String | What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
final String negativePrompt = negativePrompt_example; // String | A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.
final MultipartFile mask = BINARY_DATA_HERE; // MultipartFile | Controls the strength of the inpainting process on a per-pixel basis, either via a  second image (passed into this parameter) or via the alpha channel of the `image` parameter.  **Passing in a Mask**    The image passed to this parameter should be a black and white image that represents,  at any pixel, the strength of inpainting based on how dark or light the given pixel is.  Completely black pixels represent no inpainting strength while completely white pixels  represent maximum strength.  In the event the mask is a different size than the `image` parameter, it will be automatically resized.  **Alpha Channel Support**  If you don't provide an explicit mask, one will be derived from the alpha channel of the `image` parameter. Transparent pixels will be inpainted while opaque pixels will be preserved.  In the event an `image` with an alpha channel is provided along with a `mask`, the `mask` will take precedence.

try {
    final response = api.v2alphaGenerationStableImageInpaintPost(authorization, contentType, accept, mode, searchPrompt, image, prompt, negativePrompt, seed, outputFormat, mask);
    print(response);
} catch on DioException (e) {
    print('Exception when calling V2alphaGenerationApi->v2alphaGenerationStableImageInpaintPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **accept** | **String**|  | [optional] [default to 'image/*']
 **mode** | **String**| Controls how the model decides which areas to inpaint and which areas to leave alone.    Specifying `mask` requires:   - Provide an explicit mask image in the `mask` parameter   - Use the alpha channel of the `image` parameter as the mask    Specifying `search` requires:   - Provide a small description of what to inpaint in the `search_prompt` parameter | [optional] 
 **searchPrompt** | **String**| Short description of what to inpaint in the `image`. | [optional] 
 **image** | **MultipartFile**| The image you wish to inpaint.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels | [optional] 
 **prompt** | **String**| What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue. | [optional] 
 **negativePrompt** | **String**| A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature. | [optional] 
 **seed** | **num**| A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.) | [optional] [default to 0]
 **outputFormat** | **String**| Dictates the `content-type` of the generated image. | [optional] [default to 'png']
 **mask** | **MultipartFile**| Controls the strength of the inpainting process on a per-pixel basis, either via a  second image (passed into this parameter) or via the alpha channel of the `image` parameter.  **Passing in a Mask**    The image passed to this parameter should be a black and white image that represents,  at any pixel, the strength of inpainting based on how dark or light the given pixel is.  Completely black pixels represent no inpainting strength while completely white pixels  represent maximum strength.  In the event the mask is a different size than the `image` parameter, it will be automatically resized.  **Alpha Channel Support**  If you don't provide an explicit mask, one will be derived from the alpha channel of the `image` parameter. Transparent pixels will be inpainted while opaque pixels will be preserved.  In the event an `image` with an alpha channel is provided along with a `mask`, the `mask` will take precedence. | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/jpeg, application/json; type=image/jpeg, image/png, application/json; type=image/png, image/webp, application/json; type=image/webp, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2alphaGenerationStableImageUpscalePost**
> InlineResponse200 v2alphaGenerationStableImageUpscalePost(authorization, contentType, image, prompt, negativePrompt, outputFormat, seed, creativity)

stable-image/upscale

Takes images between 64x64 and 1 megapixel and upscales them all the way to **4K** resolution.  Put more  generally, it can upscale images ~20-40x times while preserving, and often enhancing, quality.  ### How to use   - Invoke this endpoint with the required parameters to start a generation   - Use that `id` in the response to poll for results at the [upscale/result/{id}](#tag/v2alphageneration/paths/~1v2alpha~1generation~1stable-image~1upscale~1result~1%7Bid%7D/get) endpoint     - Rate-limiting or other errors may occur if you poll more than once every 10 seconds      ### Price Flat rate of 25 cents per generation.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getV2alphaGenerationApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The image you wish to upscale.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 1,048,576 pixels
final String prompt = prompt_example; // String | What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
final String negativePrompt = negativePrompt_example; // String | A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final num creativity = 8.14; // num | Indicates how creative the model should be when upscaling an image. Higher values will result in more details being added to the image during upscaling.

try {
    final response = api.v2alphaGenerationStableImageUpscalePost(authorization, contentType, image, prompt, negativePrompt, outputFormat, seed, creativity);
    print(response);
} catch on DioException (e) {
    print('Exception when calling V2alphaGenerationApi->v2alphaGenerationStableImageUpscalePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **image** | **MultipartFile**| The image you wish to upscale.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 1,048,576 pixels | 
 **prompt** | **String**| What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue. | 
 **negativePrompt** | **String**| A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature. | [optional] 
 **outputFormat** | **String**| Dictates the `content-type` of the generated image. | [optional] [default to 'png']
 **seed** | **num**| A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.) | [optional] [default to 0]
 **creativity** | **num**| Indicates how creative the model should be when upscaling an image. Higher values will result in more details being added to the image during upscaling. | [optional] [default to 0.3]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2alphaGenerationStableImageUpscaleResultIdGet**
> Uint8List v2alphaGenerationStableImageUpscaleResultIdGet(id, authorization, accept)

stable-image/upscale/result

Fetch the result of an upscale generation by ID. Make sure to use the same API key to fetch the generation result that you used to create the generation, otherwise you will receive a `404` response.  ### How is progress reported? Your generation is either `in-progress` (i.e. status code `202`) or it is complete (i.e. status code `200`).  We may add more fine-grained progress reporting in the future (e.g. a numerical progress).  ### How long are results stored? Results are stored for 24 hours after generation. After that, the results are deleted.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getV2alphaGenerationApi();
final String id = id_example; // String | 
final String authorization = authorization_example; // String | 
final String accept = accept_example; // String | 

try {
    final response = api.v2alphaGenerationStableImageUpscaleResultIdGet(id, authorization, accept);
    print(response);
} catch on DioException (e) {
    print('Exception when calling V2alphaGenerationApi->v2alphaGenerationStableImageUpscaleResultIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**|  | 
 **accept** | **String**|  | [optional] [default to 'image/*']

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/jpeg, application/json; type=image/jpeg, image/png, application/json; type=image/png, image/webp, application/json; type=image/webp, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

