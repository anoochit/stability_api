# stability_api.model.TextToImageRequestBody

## Load the model package
```dart
import 'package:stability_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**textPrompts** | [**BuiltList&lt;TextPrompt&gt;**](TextPrompt.md) | An array of text prompts to use for generation.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as:  ``` \"text_prompts\": [   {     \"text\": \"A lighthouse on a cliff\",     \"weight\": 0.5   } ] ``` | 
**cfgScale** | **num** | How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt) | [optional] [default to 7]
**clipGuidancePreset** | [**ClipGuidancePreset**](ClipGuidancePreset.md) |  | [optional] 
**sampler** | [**Sampler**](Sampler.md) |  | [optional] 
**samples** | **int** | Number of images to generate | [optional] [default to 1]
**seed** | **int** | Random noise seed (omit this option or use `0` for a random seed) | [optional] [default to 0]
**steps** | **int** | Number of diffusion steps to run. | [optional] [default to 30]
**stylePreset** | [**StylePreset**](StylePreset.md) |  | [optional] 
**extras** | [**JsonObject**](.md) | Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution. | [optional] 
**height** | **int** | Height of the image to generate, in pixels, in an increment divisible by 64. | [optional] [default to 512]
**width** | **int** | Width of the image to generate, in pixels, in an increment divisible by 64. | [optional] [default to 512]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


