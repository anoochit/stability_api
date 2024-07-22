# stability_api.api.EditApi

## Load the API package
```dart
import 'package:stability_api/api.dart';
```

All URIs are relative to *https://api.stability.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2betaStableImageEditErasePost**](EditApi.md#v2betastableimageediterasepost) | **POST** /v2beta/stable-image/edit/erase | Erase
[**v2betaStableImageEditInpaintPost**](EditApi.md#v2betastableimageeditinpaintpost) | **POST** /v2beta/stable-image/edit/inpaint | Inpaint
[**v2betaStableImageEditOutpaintPost**](EditApi.md#v2betastableimageeditoutpaintpost) | **POST** /v2beta/stable-image/edit/outpaint | Outpaint
[**v2betaStableImageEditRemoveBackgroundPost**](EditApi.md#v2betastableimageeditremovebackgroundpost) | **POST** /v2beta/stable-image/edit/remove-background | Remove Background
[**v2betaStableImageEditSearchAndReplacePost**](EditApi.md#v2betastableimageeditsearchandreplacepost) | **POST** /v2beta/stable-image/edit/search-and-replace | Search and Replace


# **v2betaStableImageEditErasePost**
> Uint8List v2betaStableImageEditErasePost(authorization, contentType, accept, image, mask, growMask, seed, outputFormat)

Erase

The Erase service removes unwanted objects, such as blemishes on portraits or items on desks, using image masks.  The mask is provided in one of two ways:   1. Explicitly passing in a separate image via the `mask` parameter    2. Derived from the alpha channel of the `image` parameter.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=t1Q4w2uvvza0)  ### How to use  Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.    The body of the request must include: - `image`  Optionally, the body of the request may also include: - `mask` - `seed` - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 4 megapixels.  ### Credits Flat rate of 3 credits per successful generation.  You will not be charged for failed generations.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getEditApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final String accept = accept_example; // String | 
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The image you wish to erase from.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels
final MultipartFile mask = BINARY_DATA_HERE; // MultipartFile | Controls the strength of the inpainting process on a per-pixel basis, either via a  second image (passed into this parameter) or via the alpha channel of the `image` parameter.  **Passing in a Mask**    The image passed to this parameter should be a black and white image that represents,  at any pixel, the strength of inpainting based on how dark or light the given pixel is.  Completely black pixels represent no inpainting strength while completely white pixels  represent maximum strength.  In the event the mask is a different size than the `image` parameter, it will be automatically resized.  **Alpha Channel Support**  If you don't provide an explicit mask, one will be derived from the alpha channel of the `image` parameter. Transparent pixels will be inpainted while opaque pixels will be preserved.  In the event an `image` with an alpha channel is provided along with a `mask`, the `mask` will take precedence.
final num growMask = 8.14; // num | Grows the edges of the mask outward in all directions by the specified number of pixels. The expanded area around the mask will be blurred, which can help smooth the transition between inpainted content and the original image.  Try this parameter if you notice seams or rough edges around the inpainted content.  > Note: Excessive growth may obscure fine details in the mask and/or merge nearby masked regions.
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.

try {
    final response = api.v2betaStableImageEditErasePost(authorization, contentType, accept, image, mask, growMask, seed, outputFormat);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EditApi->v2betaStableImageEditErasePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **accept** | **String**|  | [default to 'image/*']
 **image** | **MultipartFile**| The image you wish to erase from.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels | 
 **mask** | **MultipartFile**| Controls the strength of the inpainting process on a per-pixel basis, either via a  second image (passed into this parameter) or via the alpha channel of the `image` parameter.  **Passing in a Mask**    The image passed to this parameter should be a black and white image that represents,  at any pixel, the strength of inpainting based on how dark or light the given pixel is.  Completely black pixels represent no inpainting strength while completely white pixels  represent maximum strength.  In the event the mask is a different size than the `image` parameter, it will be automatically resized.  **Alpha Channel Support**  If you don't provide an explicit mask, one will be derived from the alpha channel of the `image` parameter. Transparent pixels will be inpainted while opaque pixels will be preserved.  In the event an `image` with an alpha channel is provided along with a `mask`, the `mask` will take precedence. | [optional] 
 **growMask** | **num**| Grows the edges of the mask outward in all directions by the specified number of pixels. The expanded area around the mask will be blurred, which can help smooth the transition between inpainted content and the original image.  Try this parameter if you notice seams or rough edges around the inpainted content.  > Note: Excessive growth may obscure fine details in the mask and/or merge nearby masked regions. | [optional] [default to 5]
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

# **v2betaStableImageEditInpaintPost**
> Uint8List v2betaStableImageEditInpaintPost(authorization, contentType, accept, image, prompt, negativePrompt, mask, growMask, seed, outputFormat)

Inpaint

Intelligently modify images by filling in or replacing specified areas with new content based on the content of a \"mask\" image.   The \"mask\" is provided in one of two ways:   1. Explicitly passing in a separate image via the `mask` parameter    2. Derived from the alpha channel of the `image` parameter.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=t1Q4w2uvvza0)  ### How to use  Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.    The body of the request must include: - `image` - `prompt`  Optionally, the body of the request may also include: - `mask` - `negative_prompt` - `seed` - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 4 megapixels.  ### Credits Flat rate of 3 credits per successful generation.  You will not be charged for failed generations.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getEditApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final String accept = accept_example; // String | 
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The image you wish to inpaint.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels
final String prompt = prompt_example; // String | What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
final String negativePrompt = negativePrompt_example; // String | A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
final MultipartFile mask = BINARY_DATA_HERE; // MultipartFile | Controls the strength of the inpainting process on a per-pixel basis, either via a  second image (passed into this parameter) or via the alpha channel of the `image` parameter.  **Passing in a Mask**    The image passed to this parameter should be a black and white image that represents,  at any pixel, the strength of inpainting based on how dark or light the given pixel is.  Completely black pixels represent no inpainting strength while completely white pixels  represent maximum strength.  In the event the mask is a different size than the `image` parameter, it will be automatically resized.  **Alpha Channel Support**  If you don't provide an explicit mask, one will be derived from the alpha channel of the `image` parameter. Transparent pixels will be inpainted while opaque pixels will be preserved.  In the event an `image` with an alpha channel is provided along with a `mask`, the `mask` will take precedence.
final num growMask = 8.14; // num | Grows the edges of the mask outward in all directions by the specified number of pixels. The expanded area around the mask will be blurred, which can help smooth the transition between inpainted content and the original image.  Try this parameter if you notice seams or rough edges around the inpainted content.  > Note: Excessive growth may obscure fine details in the mask and/or merge nearby masked regions.
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.

try {
    final response = api.v2betaStableImageEditInpaintPost(authorization, contentType, accept, image, prompt, negativePrompt, mask, growMask, seed, outputFormat);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EditApi->v2betaStableImageEditInpaintPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **accept** | **String**|  | [default to 'image/*']
 **image** | **MultipartFile**| The image you wish to inpaint.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels | 
 **prompt** | **String**| What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue. | 
 **negativePrompt** | **String**| A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature. | [optional] 
 **mask** | **MultipartFile**| Controls the strength of the inpainting process on a per-pixel basis, either via a  second image (passed into this parameter) or via the alpha channel of the `image` parameter.  **Passing in a Mask**    The image passed to this parameter should be a black and white image that represents,  at any pixel, the strength of inpainting based on how dark or light the given pixel is.  Completely black pixels represent no inpainting strength while completely white pixels  represent maximum strength.  In the event the mask is a different size than the `image` parameter, it will be automatically resized.  **Alpha Channel Support**  If you don't provide an explicit mask, one will be derived from the alpha channel of the `image` parameter. Transparent pixels will be inpainted while opaque pixels will be preserved.  In the event an `image` with an alpha channel is provided along with a `mask`, the `mask` will take precedence. | [optional] 
 **growMask** | **num**| Grows the edges of the mask outward in all directions by the specified number of pixels. The expanded area around the mask will be blurred, which can help smooth the transition between inpainted content and the original image.  Try this parameter if you notice seams or rough edges around the inpainted content.  > Note: Excessive growth may obscure fine details in the mask and/or merge nearby masked regions. | [optional] [default to 5]
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

# **v2betaStableImageEditOutpaintPost**
> Uint8List v2betaStableImageEditOutpaintPost(authorization, contentType, accept, image, left, right, up, down, creativity, prompt, seed, outputFormat)

Outpaint

The Outpaint service inserts additional content in an image to fill in the space in any direction.  Compared to other automated or manual attempts to expand the content in an image, the Outpaint service  should minimize artifacts and signs that the original image has been edited.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=bZ2yK7VQSgLw)  ### How to use  Please invoke this endpoint with a POST request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.    The body of the request must include: - `image`  Along with _at least one_ outpaint direction: - `left` - `right` - `up` - `down`  > **Note:** for best quality use outpaint direction values smaller or equal to your source image dimensions.      Each of these parameters should be set to a number between 0 and 2000, representing the number of pixels to outpaint in that direction.  Optionally, the body of the request may also include: - `prompt` - `seed` - `output_format` - `creativity`  > **Note:** for more details about these parameters please see the request schema below.  ### Credits Flat rate of 4 credits per successful generation.  You will not be charged for failed generations.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getEditApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final String accept = accept_example; // String | 
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The image you wish to outpaint.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels - The aspect ratio must be between 1:2.5 and 2.5:1
final int left = 56; // int | The number of pixels to outpaint on the left side of the image. At least one outpainting direction must be supplied with a non-zero value.
final int right = 56; // int | The number of pixels to outpaint on the right side of the image. At least one outpainting direction must be supplied with a non-zero value.
final int up = 56; // int | The number of pixels to outpaint on the top of the image. At least one outpainting direction must be supplied with a non-zero value.
final int down = 56; // int | The number of pixels to outpaint on the bottom of the image. At least one outpainting direction must be supplied with a non-zero value.
final num creativity = ; // num | 
final String prompt = prompt_example; // String | What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.

try {
    final response = api.v2betaStableImageEditOutpaintPost(authorization, contentType, accept, image, left, right, up, down, creativity, prompt, seed, outputFormat);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EditApi->v2betaStableImageEditOutpaintPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **accept** | **String**|  | [default to 'image/*']
 **image** | **MultipartFile**| The image you wish to outpaint.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels - The aspect ratio must be between 1:2.5 and 2.5:1 | 
 **left** | **int**| The number of pixels to outpaint on the left side of the image. At least one outpainting direction must be supplied with a non-zero value. | [optional] [default to 0]
 **right** | **int**| The number of pixels to outpaint on the right side of the image. At least one outpainting direction must be supplied with a non-zero value. | [optional] [default to 0]
 **up** | **int**| The number of pixels to outpaint on the top of the image. At least one outpainting direction must be supplied with a non-zero value. | [optional] [default to 0]
 **down** | **int**| The number of pixels to outpaint on the bottom of the image. At least one outpainting direction must be supplied with a non-zero value. | [optional] [default to 0]
 **creativity** | [**num**](num.md)|  | [optional] 
 **prompt** | **String**| What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue. | [optional] 
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

# **v2betaStableImageEditRemoveBackgroundPost**
> Uint8List v2betaStableImageEditRemoveBackgroundPost(authorization, contentType, accept, image, outputFormat)

Remove Background

The Remove Background service accurately segments the foreground from an image and implements  and removes the background.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=VHofb3LAVmqi)   ### How to use  Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.    The body of the request must include: - `image`  Optionally, the body of the request may also include: - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Credits Flat rate of 2 credits per successful generation.  You will not be charged for failed generations.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getEditApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final String accept = accept_example; // String | 
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The image whose background you wish to remove.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 4,194,304 pixels
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.

try {
    final response = api.v2betaStableImageEditRemoveBackgroundPost(authorization, contentType, accept, image, outputFormat);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EditApi->v2betaStableImageEditRemoveBackgroundPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **accept** | **String**|  | [default to 'image/*']
 **image** | **MultipartFile**| The image whose background you wish to remove.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 4,194,304 pixels | 
 **outputFormat** | **String**| Dictates the `content-type` of the generated image. | [optional] [default to 'png']

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/png, application/json; type=image/png, image/webp, application/json; type=image/webp, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2betaStableImageEditSearchAndReplacePost**
> Uint8List v2betaStableImageEditSearchAndReplacePost(authorization, contentType, accept, image, prompt, searchPrompt, negativePrompt, growMask, seed, outputFormat)

Search and Replace

The Search and Replace service is a specific version of inpainting that does not require a mask.  Instead, users can leverage a `search_prompt` to identify an object in simple language to be replaced.  The service will automatically segment the object and replace it with the object requested in the prompt.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=0lDpGa2jAmAs)  ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.  The body of the request should include: - `image` - `prompt` - `search_prompt`  The body may optionally include: - `seed` - `negative_prompt` - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will be 4 megapixels.  ### Credits Flat rate of 4 credits per successful generation.  You will not be charged for failed generations.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getEditApi();
final String authorization = authorization_example; // String | 
final String contentType = multipart/form-data; // String | 
final String accept = accept_example; // String | 
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | An image containing content you wish to replace.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels - The aspect ratio must be between 1:2.5 and 2.5:1
final String prompt = prompt_example; // String | What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue.
final String searchPrompt = searchPrompt_example; // String | Short description of what to inpaint in the `image`.
final String negativePrompt = negativePrompt_example; // String | A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature.
final num growMask = 8.14; // num | Grows the edges of the mask outward in all directions by the specified number of pixels. The expanded area around the mask will be blurred, which can help smooth the transition between inpainted content and the original image.  Try this parameter if you notice seams or rough edges around the inpainted content.  > Note: Excessive growth may obscure fine details in the mask and/or merge nearby masked regions.
final num seed = 8.14; // num | A specific value that is used to guide the 'randomness' of the generation. (Omit this parameter or pass `0` to use a random seed.)
final String outputFormat = outputFormat_example; // String | Dictates the `content-type` of the generated image.

try {
    final response = api.v2betaStableImageEditSearchAndReplacePost(authorization, contentType, accept, image, prompt, searchPrompt, negativePrompt, growMask, seed, outputFormat);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EditApi->v2betaStableImageEditSearchAndReplacePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 
 **contentType** | **String**|  | 
 **accept** | **String**|  | [default to 'image/*']
 **image** | **MultipartFile**| An image containing content you wish to replace.  Supported Formats: - jpeg - png - webp  Validation Rules: - Every side must be at least 64 pixels - Total pixel count must be between 4,096 and 9,437,184 pixels - The aspect ratio must be between 1:2.5 and 2.5:1 | 
 **prompt** | **String**| What you wish to see in the output image. A strong, descriptive prompt that clearly defines  elements, colors, and subjects will lead to better results.   To control the weight of a given word use the format `(word:weight)`,  where `word` is the word you'd like to control the weight of and `weight`  is a value between 0 and 1. For example: `The sky was a crisp (blue:0.3) and (green:0.8)` would convey a sky that was blue and green, but more green than blue. | 
 **searchPrompt** | **String**| Short description of what to inpaint in the `image`. | 
 **negativePrompt** | **String**| A blurb of text describing what you **do not** wish to see in the output image.   This is an advanced feature. | [optional] 
 **growMask** | **num**| Grows the edges of the mask outward in all directions by the specified number of pixels. The expanded area around the mask will be blurred, which can help smooth the transition between inpainted content and the original image.  Try this parameter if you notice seams or rough edges around the inpainted content.  > Note: Excessive growth may obscure fine details in the mask and/or merge nearby masked regions. | [optional] [default to 3]
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

