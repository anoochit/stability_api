# stability_api.api.UpscaleApi

## Load the API package
```dart
import 'package:stability_api/api.dart';
```

All URIs are relative to *https://api.stability.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2betaStableImageUpscaleConservativePost**](UpscaleApi.md#v2betastableimageupscaleconservativepost) | **POST** /v2beta/stable-image/upscale/conservative | Conservative
[**v2betaStableImageUpscaleCreativePost**](UpscaleApi.md#v2betastableimageupscalecreativepost) | **POST** /v2beta/stable-image/upscale/creative | Start Creative Upscale
[**v2betaStableImageUpscaleCreativeResultIdGet**](UpscaleApi.md#v2betastableimageupscalecreativeresultidget) | **GET** /v2beta/stable-image/upscale/creative/result/{id} | Fetch Creative Upscale result


# **v2betaStableImageUpscaleConservativePost**
> Uint8List v2betaStableImageUpscaleConservativePost(authorization, contentType, accept, image, prompt, negativePrompt, seed, outputFormat, creativity)

Conservative

Takes images between 64x64 and 1 megapixel and upscales them all the way to 4K resolution. Put more generally, it can upscale images ~20-40x times while preserving all aspects. Conservative Upscale minimizes alterations to the image and should not be used to reimagine an image.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=t1Q4w2uvvza0)  ### How to use  Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.    The body of the request must include: - `image` - `prompt`  Optionally, the body of the request may also include: - `negative_prompt` - `seed` - `output_format` - `creativity`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 4 megapixels.  ### Credits Flat rate of 25 credits per successful generation.  You will not be charged for failed generations.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getUpscaleApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final String accept = accept_example; // String | 
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The image you wish to upscale.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels - The aspect ratio must be between 1:2.5 and 2.5:1
final String prompt = prompt_example; // String | What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
final String negativePrompt = negativePrompt_example; // String | A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.
final num creativity = 8.14; // num | Controls the likelihood of creating additional details not heavily conditioned by the init image.

try {
    final response = api.v2betaStableImageUpscaleConservativePost(authorization, contentType, accept, image, prompt, negativePrompt, seed, outputFormat, creativity);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UpscaleApi->v2betaStableImageUpscaleConservativePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **accept** | **String**|  | [default to 'image/*']
 **image** | **MultipartFile**| The image you wish to upscale.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels - The aspect ratio must be between 1:2.5 and 2.5:1 | 
 **prompt** | **String**| What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue. | 
 **negativePrompt** | **String**| A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature. | [optional] 
 **seed** | **num**| A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.) | [optional] [default to 0]
 **outputFormat** | **String**| Dictates the `content-type` of the generated image. | [optional] [default to 'png']
 **creativity** | **num**| Controls the likelihood of creating additional details not heavily conditioned by the init image. | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/jpeg, application/json; type=image/jpeg, image/png, application/json; type=image/png, image/webp, application/json; type=image/webp, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2betaStableImageUpscaleCreativePost**
> InlineResponse200 v2betaStableImageUpscaleCreativePost(authorization, contentType, image, prompt, negativePrompt, outputFormat, seed, creativity)

Start Creative Upscale

Takes images between 64x64 and 1 megapixel and upscales them all the way to **4K** resolution.  Put more  generally, it can upscale images ~20-40x times while preserving, and often enhancing, quality.  Creative Upscale **works best on highly degraded images and is not for photos of 1mp or above** as it performs  heavy reimagining (controlled by creativity scale).  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=QXxi9tfI425t)   ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`.  The body of the request should include: - `image` - `prompt`  The body may optionally include: - `seed` - `negative_prompt` - `output_format` - `creativity`  > **Note:** for more details about these parameters please see the request schema below.  After invoking this endpoint with the required parameters, use the `id` in the response to poll for results at the [upscale/result/{id}](#tag/Upscale/paths/~1v2beta~1stable-image~1upscale~1creative~1result~1%7Bid%7D/get) endpoint.  Rate-limiting or other errors may occur if you poll more than once every 10 seconds.  ### Credits Flat rate of 25 credits per successful generation.  You will not be charged for failed generations.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getUpscaleApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The image you wish to upscale.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 1,048,576 pixels
final String prompt = prompt_example; // String | What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
final String negativePrompt = negativePrompt_example; // String | A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final num creativity = 8.14; // num | Indicates how creative the model should be when upscaling an image. Higher values will result in more details being added to the image during upscaling.

try {
    final response = api.v2betaStableImageUpscaleCreativePost(authorization, contentType, image, prompt, negativePrompt, outputFormat, seed, creativity);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UpscaleApi->v2betaStableImageUpscaleCreativePost: $e\n');
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

# **v2betaStableImageUpscaleCreativeResultIdGet**
> Uint8List v2betaStableImageUpscaleCreativeResultIdGet(id, authorization, accept)

Fetch Creative Upscale result

Fetch the result of an upscale generation by ID.   Make sure to use the same API key to fetch the generation result that you used to create the generation,  otherwise you will receive a `404` response.  ### How to use Please invoke this endpoint with a `GET` request.  The headers of the request must include an API key in the `authorization` field and the ID of your generation must be in the path.  ### How is progress reported? Your generation is either `in-progress` (i.e. status code `202`) or it is complete (i.e. status code `200`).  We may add more fine-grained progress reporting in the future (e.g. a numerical progress).  ### How long are results stored? Results are stored for 24 hours after generation. After that, the results are deleted.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getUpscaleApi();
final String id = id_example; // String | 
final String authorization = authorization_example; // String | 
final String accept = accept_example; // String | 

try {
    final response = api.v2betaStableImageUpscaleCreativeResultIdGet(id, authorization, accept);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UpscaleApi->v2betaStableImageUpscaleCreativeResultIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**|  | 
 **accept** | **String**|  | [default to 'image/*']

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/jpeg, application/json; type=image/jpeg, image/png, application/json; type=image/png, image/webp, application/json; type=image/webp, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

