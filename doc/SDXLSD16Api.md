# stability_api.api.SDXLSD16Api

## Load the API package
```dart
import 'package:stability_api/api.dart';
```

All URIs are relative to *https://api.stability.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imageToImage**](SDXLSD16Api.md#imagetoimage) | **POST** /v1/generation/{engine_id}/image-to-image | Image-to-image with prompt
[**masking**](SDXLSD16Api.md#masking) | **POST** /v1/generation/{engine_id}/image-to-image/masking | Image-to-image with a mask
[**textToImage**](SDXLSD16Api.md#texttoimage) | **POST** /v1/generation/{engine_id}/text-to-image | Text-to-image
[**upscaleImage**](SDXLSD16Api.md#upscaleimage) | **POST** /v1/generation/{engine_id}/image-to-image/upscale | Image-to-image upscale


# **imageToImage**
> InlineResponse2006 imageToImage(engineId, textPrompts, initImage, accept, organization, stabilityClientID, stabilityClientVersion, initImageMode, imageStrength, stepScheduleStart, stepScheduleEnd, cfgScale, clipGuidancePreset, sampler, samples, seed, steps, stylePreset, extras)

Image-to-image with prompt

Produce an image from an existing image using a text prompt.  ### How to control strength of generation To preserve only roughly 35% of the initial image, pass in either `init_image_mode=IMAGE_STRENGTH` and `image_strength=0.35` or `init_image_mode=STEP_SCHEDULE` and `step_schedule_start=0.65`.  Both of these are equivalent, however `init_image_mode=STEP_SCHEDULE` also lets you pass in `step_schedule_end`, which can provide an extra level of control for those who need it.  For more details, see the specific fields below.    > NOTE: Only **Version 1** engines will work with this endpoint.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getSDXLSD16Api();
final String engineId = stable-diffusion-v1-6; // String | 
final BuiltList<TextPrompt> textPrompts = ; // BuiltList<TextPrompt> | An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ```
final MultipartFile initImage = BINARY_DATA_HERE; // MultipartFile | Image used to initialize the diffusion process, in lieu of random noise.
final String accept = accept_example; // String | The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
final String organization = org-123456; // String | Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
final String stabilityClientID = my-great-plugin; // String | Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
final String stabilityClientVersion = 1.2.1; // String | Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
final InitImageMode initImageMode = ; // InitImageMode | 
final double imageStrength = 3.4; // double | How much influence the `init_image` has on the diffusion process. Values close to `1` will yield images very similar to the `init_image` while values close to `0` will yield images wildly different than the `init_image`. The behavior of this is meant to mirror DreamStudio's \\\"Image Strength\\\" slider.  <br/> <br/> This parameter is just an alternate way to set `step_schedule_start`, which is done via the calculation `1 - image_strength`. For example, passing in an Image Strength of 35% (`0.35`) would result in a `step_schedule_start` of `0.65`. 
final num stepScheduleStart = 8.14; // num | Skips a proportion of the start of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.  (e.g. a value of `0` would simply return you the init_image, where a value of `1` would return you a completely different image.)
final num stepScheduleEnd = 8.14; // num | Skips a proportion of the end of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.
final num cfgScale = 8.14; // num | How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
final ClipGuidancePreset clipGuidancePreset = ; // ClipGuidancePreset | 
final Sampler sampler = ; // Sampler | 
final int samples = 56; // int | Number of images to generate
final int seed = 56; // int | Random noise seed (omit this option or use `0` for a random seed)
final int steps = 56; // int | Number of diffusion steps to run.
final StylePreset stylePreset = ; // StylePreset | 
final JsonObject extras = Object; // JsonObject | Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.

try {
    final response = api.imageToImage(engineId, textPrompts, initImage, accept, organization, stabilityClientID, stabilityClientVersion, initImageMode, imageStrength, stepScheduleStart, stepScheduleEnd, cfgScale, clipGuidancePreset, sampler, samples, seed, steps, stylePreset, extras);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SDXLSD16Api->imageToImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **engineId** | **String**|  | 
 **textPrompts** | [**BuiltList&lt;TextPrompt&gt;**](TextPrompt.md)| An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ``` | 
 **initImage** | **MultipartFile**| Image used to initialize the diffusion process, in lieu of random noise. | 
 **accept** | **String**| The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image. | [optional] [default to 'application/json']
 **organization** | **String**| Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used. | [optional] 
 **stabilityClientID** | **String**| Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity. | [optional] 
 **stabilityClientVersion** | **String**| Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity. | [optional] 
 **initImageMode** | [**InitImageMode**](InitImageMode.md)|  | [optional] 
 **imageStrength** | **double**| How much influence the `init_image` has on the diffusion process. Values close to `1` will yield images very similar to the `init_image` while values close to `0` will yield images wildly different than the `init_image`. The behavior of this is meant to mirror DreamStudio's \\\"Image Strength\\\" slider.  <br/> <br/> This parameter is just an alternate way to set `step_schedule_start`, which is done via the calculation `1 - image_strength`. For example, passing in an Image Strength of 35% (`0.35`) would result in a `step_schedule_start` of `0.65`.  | [optional] 
 **stepScheduleStart** | **num**| Skips a proportion of the start of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.  (e.g. a value of `0` would simply return you the init_image, where a value of `1` would return you a completely different image.) | [optional] 
 **stepScheduleEnd** | **num**| Skips a proportion of the end of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps. | [optional] 
 **cfgScale** | **num**| How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt) | [optional] 
 **clipGuidancePreset** | [**ClipGuidancePreset**](ClipGuidancePreset.md)|  | [optional] 
 **sampler** | [**Sampler**](Sampler.md)|  | [optional] 
 **samples** | **int**| Number of images to generate | [optional] 
 **seed** | **int**| Random noise seed (omit this option or use `0` for a random seed) | [optional] 
 **steps** | **int**| Number of diffusion steps to run. | [optional] 
 **stylePreset** | [**StylePreset**](StylePreset.md)|  | [optional] 
 **extras** | [**JsonObject**](JsonObject.md)| Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **masking**
> InlineResponse2006 masking(engineId, initImage, maskSource, textPrompts, accept, organization, stabilityClientID, stabilityClientVersion, maskImage, cfgScale, clipGuidancePreset, sampler, samples, seed, steps, stylePreset, extras)

Image-to-image with a mask

Selectively modify portions of an image using a mask. The `mask` must be the same shape and size as the init image. This endpoint also supports `image` parameters with alpha channels.  See below for more details.   > NOTE: Only **Version 1** engines will work with this endpoint.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getSDXLSD16Api();
final String engineId = stable-diffusion-xl-1024-v1-0; // String | 
final MultipartFile initImage = BINARY_DATA_HERE; // MultipartFile | Image used to initialize the diffusion process, in lieu of random noise.
final String maskSource = maskSource_example; // String | For any given pixel, the mask determines the strength of generation on a linear scale.  This parameter determines where to source the mask from: - `MASK_IMAGE_WHITE` will use the white pixels of the mask_image as the mask, where white pixels are completely replaced and black pixels are unchanged - `MASK_IMAGE_BLACK` will use the black pixels of the mask_image as the mask, where black pixels are completely replaced and white pixels are unchanged - `INIT_IMAGE_ALPHA` will use the alpha channel of the init_image as the mask, where fully transparent pixels are completely replaced and fully opaque pixels are unchanged
final BuiltList<TextPrompt> textPrompts = ; // BuiltList<TextPrompt> | An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ```
final String accept = accept_example; // String | The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
final String organization = org-123456; // String | Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
final String stabilityClientID = my-great-plugin; // String | Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
final String stabilityClientVersion = 1.2.1; // String | Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
final MultipartFile maskImage = BINARY_DATA_HERE; // MultipartFile | Optional grayscale mask that allows for influence over which pixels are eligible for diffusion and at what strength. Must be the same dimensions as the `init_image`. Use the `mask_source` option to specify whether the white or black pixels should be inpainted.
final num cfgScale = 8.14; // num | How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
final ClipGuidancePreset clipGuidancePreset = ; // ClipGuidancePreset | 
final Sampler sampler = ; // Sampler | 
final int samples = 56; // int | Number of images to generate
final int seed = 56; // int | Random noise seed (omit this option or use `0` for a random seed)
final int steps = 56; // int | Number of diffusion steps to run.
final StylePreset stylePreset = ; // StylePreset | 
final JsonObject extras = Object; // JsonObject | Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.

try {
    final response = api.masking(engineId, initImage, maskSource, textPrompts, accept, organization, stabilityClientID, stabilityClientVersion, maskImage, cfgScale, clipGuidancePreset, sampler, samples, seed, steps, stylePreset, extras);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SDXLSD16Api->masking: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **engineId** | **String**|  | 
 **initImage** | **MultipartFile**| Image used to initialize the diffusion process, in lieu of random noise. | 
 **maskSource** | **String**| For any given pixel, the mask determines the strength of generation on a linear scale.  This parameter determines where to source the mask from: - `MASK_IMAGE_WHITE` will use the white pixels of the mask_image as the mask, where white pixels are completely replaced and black pixels are unchanged - `MASK_IMAGE_BLACK` will use the black pixels of the mask_image as the mask, where black pixels are completely replaced and white pixels are unchanged - `INIT_IMAGE_ALPHA` will use the alpha channel of the init_image as the mask, where fully transparent pixels are completely replaced and fully opaque pixels are unchanged | 
 **textPrompts** | [**BuiltList&lt;TextPrompt&gt;**](TextPrompt.md)| An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ``` | 
 **accept** | **String**| The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image. | [optional] [default to 'application/json']
 **organization** | **String**| Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used. | [optional] 
 **stabilityClientID** | **String**| Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity. | [optional] 
 **stabilityClientVersion** | **String**| Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity. | [optional] 
 **maskImage** | **MultipartFile**| Optional grayscale mask that allows for influence over which pixels are eligible for diffusion and at what strength. Must be the same dimensions as the `init_image`. Use the `mask_source` option to specify whether the white or black pixels should be inpainted. | [optional] 
 **cfgScale** | **num**| How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt) | [optional] 
 **clipGuidancePreset** | [**ClipGuidancePreset**](ClipGuidancePreset.md)|  | [optional] 
 **sampler** | [**Sampler**](Sampler.md)|  | [optional] 
 **samples** | **int**| Number of images to generate | [optional] 
 **seed** | **int**| Random noise seed (omit this option or use `0` for a random seed) | [optional] 
 **steps** | **int**| Number of diffusion steps to run. | [optional] 
 **stylePreset** | [**StylePreset**](StylePreset.md)|  | [optional] 
 **extras** | [**JsonObject**](JsonObject.md)| Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **textToImage**
> InlineResponse2006 textToImage(engineId, textToImageRequestBody, accept, organization, stabilityClientID, stabilityClientVersion)

Text-to-image

Generate an image from a text prompt.  ### Using SDXL 1.0 Use `stable-diffusion-xl-1024-v1-0` as the `engine_id` of your request and pass in `height` & `width` as one of the following combinations: - 1024x1024 - 1152x896 - 896x1152 - 1216x832 - 1344x768 - 768x1344 - 1536x640 - 640x1536.   ### Using SD 1.6 Pass in `stable-diffusion-v1-6` as the `engine_id` of your request and ensure the `height` & `width` you pass in adhere to the following restrictions: - No dimension can be less than 320 pixels - No dimension can be greater than 1536 pixels  ### Using SD Beta Pass in `stable-diffusion-xl-beta-v2-2-2` as the `engine_id` of your request and ensure the `height` & `width` you pass in adhere to the following restrictions: - dimensions must be between 128x128 and 512x896 (or 896x512) - only one dimension can be greater than 512, but not both   > NOTE: Only **Version 1** engines will work with this endpoint.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getSDXLSD16Api();
final String engineId = stable-diffusion-v1-6; // String | 
final TextToImageRequestBody textToImageRequestBody = {"cfg_scale":7,"height":512,"width":512,"sampler":"K_DPM_2_ANCESTRAL","samples":1,"steps":30,"text_prompts":[{"text":"A lighthouse on a cliff","weight":1}]}; // TextToImageRequestBody | 
final String accept = accept_example; // String | The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
final String organization = org-123456; // String | Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
final String stabilityClientID = my-great-plugin; // String | Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
final String stabilityClientVersion = 1.2.1; // String | Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.

try {
    final response = api.textToImage(engineId, textToImageRequestBody, accept, organization, stabilityClientID, stabilityClientVersion);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SDXLSD16Api->textToImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **engineId** | **String**|  | 
 **textToImageRequestBody** | [**TextToImageRequestBody**](TextToImageRequestBody.md)|  | 
 **accept** | **String**| The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image. | [optional] [default to 'application/json']
 **organization** | **String**| Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used. | [optional] 
 **stabilityClientID** | **String**| Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity. | [optional] 
 **stabilityClientVersion** | **String**| Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upscaleImage**
> InlineResponse2006 upscaleImage(engineId, image, accept, organization, stabilityClientID, stabilityClientVersion, width, height)

Image-to-image upscale

Create a higher resolution version of an input image.  This operation outputs an image with a maximum pixel count of **4,194,304**. This is equivalent to dimensions such as `2048x2048` and `4096x1024`.  By default, the input image will be upscaled by a factor of 2.  For additional control over the output dimensions, a `width` or `height` parameter may be specified.

### Example
```dart
import 'package:stability_api/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api = StabilityApi().getSDXLSD16Api();
final String engineId = esrgan-v1-x2plus; // String | 
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | The image to upscale using ESRGAN.
final String accept = accept_example; // String | The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
final String organization = org-123456; // String | Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
final String stabilityClientID = my-great-plugin; // String | Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
final String stabilityClientVersion = 1.2.1; // String | Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
final int width = 56; // int | Desired width of the output image.  Only one of `width` or `height` may be specified.
final int height = 56; // int | Desired height of the output image.  Only one of `width` or `height` may be specified.

try {
    final response = api.upscaleImage(engineId, image, accept, organization, stabilityClientID, stabilityClientVersion, width, height);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SDXLSD16Api->upscaleImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **engineId** | **String**|  | 
 **image** | **MultipartFile**| The image to upscale using ESRGAN. | 
 **accept** | **String**| The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image. | [optional] [default to 'application/json']
 **organization** | **String**| Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used. | [optional] 
 **stabilityClientID** | **String**| Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity. | [optional] 
 **stabilityClientVersion** | **String**| Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity. | [optional] 
 **width** | **int**| Desired width of the output image.  Only one of `width` or `height` may be specified. | [optional] 
 **height** | **int**| Desired height of the output image.  Only one of `width` or `height` may be specified. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

