# stability_api.api.GenerateApi

## Load the API package
```dart
import 'package:stability_api/api.dart';
```

All URIs are relative to *https://api.stability.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2betaStableImageGenerateCorePost**](GenerateApi.md#v2betastableimagegeneratecorepost) | **POST** /v2beta/stable-image/generate/core | Stable Image Core
[**v2betaStableImageGenerateSd3Post**](GenerateApi.md#v2betastableimagegeneratesd3post) | **POST** /v2beta/stable-image/generate/sd3 | Stable Diffusion 3
[**v2betaStableImageGenerateUltraPost**](GenerateApi.md#v2betastableimagegenerateultrapost) | **POST** /v2beta/stable-image/generate/ultra | Stable Image Ultra


# **v2betaStableImageGenerateCorePost**
> Uint8List v2betaStableImageGenerateCorePost(authorization, contentType, accept, prompt, aspectRatio, negativePrompt, seed, stylePreset, outputFormat)

Stable Image Core

Our primary service for text-to-image generation, Stable Image Core represents the best quality achievable at high  speed. No prompt engineering is required! Try asking for a style, a scene, or a character, and see what you get.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=yXhs626oZdr1)  ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.  The body of the request should include: - `prompt`  The body may optionally include: - `aspect_ratio` - `negative_prompt` - `seed` - `style_preset` - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 1.5 megapixels.  ### Credits Flat rate of 3 credits per successful generation.  You will not be charged for failed generations.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getGenerateApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final String accept = accept_example; // String | 
final String prompt = prompt_example; // String | What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
final String aspectRatio = aspectRatio_example; // String | Controls the aspect ratio of the generated image.
final String negativePrompt = negativePrompt_example; // String | A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final String stylePreset = stylePreset_example; // String | Guides the image model towards a particular style.
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.

try {
    final response = api.v2betaStableImageGenerateCorePost(authorization, contentType, accept, prompt, aspectRatio, negativePrompt, seed, stylePreset, outputFormat);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GenerateApi->v2betaStableImageGenerateCorePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **accept** | **String**|  | [default to 'image/*']
 **prompt** | **String**| What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue. | 
 **aspectRatio** | **String**| Controls the aspect ratio of the generated image. | [optional] [default to '1:1']
 **negativePrompt** | **String**| A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature. | [optional] 
 **seed** | **num**| A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.) | [optional] [default to 0]
 **stylePreset** | **String**| Guides the image model towards a particular style. | [optional] 
 **outputFormat** | **String**| Dictates the `content-type` of the generated image. | [optional] [default to 'png']

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/png, application/json; type=image/png, image/jpeg, application/json; type=image/jpeg, image/webp, application/json; type=image/webp, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2betaStableImageGenerateSd3Post**
> Uint8List v2betaStableImageGenerateSd3Post(authorization, contentType, accept, prompt, mode, image, strength, aspectRatio, model, seed, outputFormat, negativePrompt)

Stable Diffusion 3

Generate an image using a Stable Diffusion 3 model: - SD3 Medium - the 2 billion parameter model - SD3 Large - the 8 billion parameter model - SD3 Large Turbo - the 8 billion parameter model with a faster inference time   This API is powered by [Fireworks AI](https://fireworks.ai/).  API status can be reviewed [here](https://readme.fireworks.ai/page/application-status).   ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to one of the following sites:     - [![Open Fireworks Playground](https://platform.stability.ai/svg/fireworks.svg)](https://fireworks.ai/models/stability/sd3) - [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/SD3_API.ipynb)   ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`.  The accept header should be set to one of the following: - `image/_*` to receive the image in the format specified by the `output_format` parameter. - `application/json` to receive the image encoded as base64 in a JSON response.  #### **Generating with a prompt** Commonly referred to as **text-to-image**, this mode generates an image from text alone. While the only required   parameter is the `prompt`, it also supports an `aspect_ratio` parameter which can be used to control the  aspect ratio of the generated image.  #### **Generating with a prompt *and* an image** Commonly referred to as **image-to-image**, this mode also generates an image from text but uses an existing image as the starting point. The required parameters are: - `prompt` - text to generate the image from - `image` - the image to use as the starting point for the generation - `strength` - controls how much influence the `image` parameter has on the output image - `mode` - must be set to `image-to-image`  > **Note:** maximum request size is 10MiB.  #### **Optional Parameters:** Both modes support the following optional parameters: - `model` - the model to use (SD3 Medium, SD3 Large, or SD3 Large Turbo) - `output_format` - the the format of the output image - `seed` - the randomness seed to use for the generation - `negative_prompt` - keywords of what you **do not** wish to see in the output image  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 1MP. The default resolution is 1024x1024.  ### Credits - SD3 Medium: Flat rate of 3.5 credits per successful generation. - SD3 Large: Flat rate of 6.5 credits per successful generation. - SD3 Large Turbo: Flat rate of 4 credits per successful generation.  As always, you will not be charged for failed generations.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getGenerateApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final String accept = accept_example; // String | 
final String prompt = prompt_example; // String | What you wish to see in the output image. A strong, descriptive prompt that clearly defines elements, colors, and subjects will lead to better results.
final String mode = mode_example; // String | Controls whether this is a text-to-image or image-to-image generation, which affects which parameters are required: - **text-to-image** requires only the `prompt` parameter - **image-to-image** requires the `prompt`, `image`, and `strength` parameters
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The image to use as the starting point for the generation.  Supported formats:   - jpeg   - png   - webp  Supported dimensions:   - Every side must be at least 64 pixels    > **Important:** This parameter is only valid for **image-to-image** requests.
final num strength = 8.14; // num | Sometimes referred to as _denoising_, this parameter controls how much influence the  `image` parameter has on the generated image.  A value of 0 would yield an image that  is identical to the input.  A value of 1 would be as if you passed in no image at all.  > **Important:** This parameter is only valid for **image-to-image** requests.
final String aspectRatio = aspectRatio_example; // String | Controls the aspect ratio of the generated image. Defaults to 1:1.  > **Important:** This parameter is only valid for **text-to-image** requests.
final String model = model_example; // String | The model to use for generation.  - `sd3-medium` requires 3.5 credits per generation - `sd3-large` requires 6.5 credits per generation - `sd3-large-turbo` requires 4 credits per generation
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.
final String negativePrompt = negativePrompt_example; // String | Keywords of what you **do not** wish to see in the output image. This is an advanced feature.  > **Important:** This parameter does **not** work with `sd3-large-turbo`.

try {
    final response = api.v2betaStableImageGenerateSd3Post(authorization, contentType, accept, prompt, mode, image, strength, aspectRatio, model, seed, outputFormat, negativePrompt);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GenerateApi->v2betaStableImageGenerateSd3Post: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **accept** | **String**|  | [default to 'image/*']
 **prompt** | **String**| What you wish to see in the output image. A strong, descriptive prompt that clearly defines elements, colors, and subjects will lead to better results. | 
 **mode** | **String**| Controls whether this is a text-to-image or image-to-image generation, which affects which parameters are required: - **text-to-image** requires only the `prompt` parameter - **image-to-image** requires the `prompt`, `image`, and `strength` parameters | [optional] [default to 'text-to-image']
 **image** | **MultipartFile**| The image to use as the starting point for the generation.  Supported formats:   - jpeg   - png   - webp  Supported dimensions:   - Every side must be at least 64 pixels    > **Important:** This parameter is only valid for **image-to-image** requests. | [optional] 
 **strength** | **num**| Sometimes referred to as _denoising_, this parameter controls how much influence the  `image` parameter has on the generated image.  A value of 0 would yield an image that  is identical to the input.  A value of 1 would be as if you passed in no image at all.  > **Important:** This parameter is only valid for **image-to-image** requests. | [optional] 
 **aspectRatio** | **String**| Controls the aspect ratio of the generated image. Defaults to 1:1.  > **Important:** This parameter is only valid for **text-to-image** requests. | [optional] [default to '1:1']
 **model** | **String**| The model to use for generation.  - `sd3-medium` requires 3.5 credits per generation - `sd3-large` requires 6.5 credits per generation - `sd3-large-turbo` requires 4 credits per generation | [optional] [default to 'sd3-large']
 **seed** | **num**| A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.) | [optional] [default to 0]
 **outputFormat** | **String**| Dictates the `content-type` of the generated image. | [optional] [default to 'png']
 **negativePrompt** | **String**| Keywords of what you **do not** wish to see in the output image. This is an advanced feature.  > **Important:** This parameter does **not** work with `sd3-large-turbo`. | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/png, application/json; type=image/png, image/jpeg, application/json; type=image/jpeg, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2betaStableImageGenerateUltraPost**
> Uint8List v2betaStableImageGenerateUltraPost(authorization, contentType, accept, prompt, negativePrompt, aspectRatio, seed, outputFormat)

Stable Image Ultra

Our most advanced text to image generation service, Stable Image Ultra creates the highest quality images with unprecedented prompt understanding. Ultra excels in typography, complex compositions, dynamic lighting,  vibrant hues, and overall cohesion and structure of an art piece. Made from the most advanced models, including Stable Diffusion 3, Ultra offers the best of the Stable Diffusion ecosystem.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=yXhs626oZdr1)  ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`.  The accept header should be set to one of the following: - `image/_*` to receive the image in the format specified by the `output_format` parameter. - `application/json` to receive the image in the format specified by the `output_format` parameter, but encoded to base64 in a JSON response.  The only required parameter is the `prompt` field, which should contain the text prompt for the image generation.  > **Note:** for the full list of optional parameters, please see the request schema below.  ### Output The resolution of the generated image will be 1 megapixel. The default resolution is 1024x1024.  ### Credits The Ultra service uses 8 credits per successful result. You will not be charged for failed results.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getGenerateApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final String accept = accept_example; // String | 
final String prompt = prompt_example; // String | What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
final String negativePrompt = negativePrompt_example; // String | A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
final String aspectRatio = aspectRatio_example; // String | Controls the aspect ratio of the generated image.
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.

try {
    final response = api.v2betaStableImageGenerateUltraPost(authorization, contentType, accept, prompt, negativePrompt, aspectRatio, seed, outputFormat);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GenerateApi->v2betaStableImageGenerateUltraPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **accept** | **String**|  | [default to 'image/*']
 **prompt** | **String**| What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue. | 
 **negativePrompt** | **String**| A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature. | [optional] 
 **aspectRatio** | **String**| Controls the aspect ratio of the generated image. | [optional] [default to '1:1']
 **seed** | **num**| A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.) | [optional] [default to 0]
 **outputFormat** | **String**| Dictates the `content-type` of the generated image. | [optional] [default to 'png']

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/jpeg, application/json; type=image/jpeg, image/png, application/json; type=image/png, image/webp, application/json; type=image/webp, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

