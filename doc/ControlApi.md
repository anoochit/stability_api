# stability_api.api.ControlApi

## Load the API package
```dart
import 'package:stability_api/api.dart';
```

All URIs are relative to *https://api.stability.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2betaStableImageControlSketchPost**](ControlApi.md#v2betastableimagecontrolsketchpost) | **POST** /v2beta/stable-image/control/sketch | Sketch
[**v2betaStableImageControlStructurePost**](ControlApi.md#v2betastableimagecontrolstructurepost) | **POST** /v2beta/stable-image/control/structure | Structure


# **v2betaStableImageControlSketchPost**
> Uint8List v2betaStableImageControlSketchPost(authorization, contentType, accept, prompt, image, controlStrength, negativePrompt, seed, outputFormat)

Sketch

This service offers an ideal solution for design projects that require brainstorming and frequent iterations. It upgrades rough hand-drawn sketches to refined outputs with precise  control. For non-sketch images, it allows detailed manipulation of the final appearance by  leveraging the contour lines and edges within the image.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=ZKIAqHzJzzUo)  ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.  The body of the request should include: - `image` - `prompt`  The body may optionally include: - `control_strength` - `negative_prompt` - `seed` - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will match that of the input image.  ### Credits Flat rate of 3 credits per successful generation. You will not be charged for failed generations.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getControlApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final String accept = accept_example; // String | 
final String prompt = prompt_example; // String | What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | Supported Formats: - jpeg - png - webp  Image Dimensions: - Every side must be at least 64 pixels - The total pixel count cannot exceed 9,437,184 pixels (e.g. 3072x3072, 4096x2304, etc.)  Image Aspect Ratio: - Must be between 1:2.5 and 2.5:1 (i.e. cannot be too tall or too wide)
final num controlStrength = 8.14; // num | How much influence, or control, the `image` has on the generation. Represented as a float between 0 and 1, where 0 is the least influence and 1 is the maximum.
final String negativePrompt = negativePrompt_example; // String | A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.

try {
    final response = api.v2betaStableImageControlSketchPost(authorization, contentType, accept, prompt, image, controlStrength, negativePrompt, seed, outputFormat);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ControlApi->v2betaStableImageControlSketchPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **accept** | **String**|  | [default to 'image/*']
 **prompt** | **String**| What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue. | 
 **image** | **MultipartFile**| Supported Formats: - jpeg - png - webp  Image Dimensions: - Every side must be at least 64 pixels - The total pixel count cannot exceed 9,437,184 pixels (e.g. 3072x3072, 4096x2304, etc.)  Image Aspect Ratio: - Must be between 1:2.5 and 2.5:1 (i.e. cannot be too tall or too wide) | 
 **controlStrength** | **num**| How much influence, or control, the `image` has on the generation. Represented as a float between 0 and 1, where 0 is the least influence and 1 is the maximum. | [optional] [default to 0.7]
 **negativePrompt** | **String**| A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature. | [optional] 
 **seed** | **num**| A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.) | [optional] [default to 0]
 **outputFormat** | **String**| Dictates the `content-type` of the generated image. | [optional] [default to 'png']

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/png, application/json; type=image/png, image/jpeg, application/json; type=image/jpeg, image/webp, application/json; type=image/webp, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2betaStableImageControlStructurePost**
> Uint8List v2betaStableImageControlStructurePost(authorization, contentType, accept, prompt, image, controlStrength, negativePrompt, seed, outputFormat)

Structure

This service excels in generating images by maintaining the structure of an input image,  making it especially valuable for advanced content creation scenarios such as recreating  scenes or rendering characters from models.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=59RaZazXz0AU)  ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.  The body of the request should include: - `image` - `prompt`  The body may optionally include: - `control_strength` - `negative_prompt` - `seed` - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will match that of the input image.  ### Credits Flat rate of 3 credits per successful generation. You will not be charged for failed generations.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getControlApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final String accept = accept_example; // String | 
final String prompt = prompt_example; // String | What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | An image whose structure you wish to use as the foundation for a generation.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels - The aspect ratio must be between 1:2.5 and 2.5:1
final num controlStrength = 8.14; // num | How much influence, or control, the `image` has on the generation. Represented as a float between 0 and 1, where 0 is the least influence and 1 is the maximum.
final String negativePrompt = negativePrompt_example; // String | A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.

try {
    final response = api.v2betaStableImageControlStructurePost(authorization, contentType, accept, prompt, image, controlStrength, negativePrompt, seed, outputFormat);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ControlApi->v2betaStableImageControlStructurePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **accept** | **String**|  | [default to 'image/*']
 **prompt** | **String**| What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue. | 
 **image** | **MultipartFile**| An image whose structure you wish to use as the foundation for a generation.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels - The aspect ratio must be between 1:2.5 and 2.5:1 | 
 **controlStrength** | **num**| How much influence, or control, the `image` has on the generation. Represented as a float between 0 and 1, where 0 is the least influence and 1 is the maximum. | [optional] [default to 0.7]
 **negativePrompt** | **String**| A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature. | [optional] 
 **seed** | **num**| A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.) | [optional] [default to 0]
 **outputFormat** | **String**| Dictates the `content-type` of the generated image. | [optional] [default to 'png']

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/png, application/json; type=image/png, image/jpeg, application/json; type=image/jpeg, image/webp, application/json; type=image/webp, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

