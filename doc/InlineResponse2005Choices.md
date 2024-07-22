# stability_api.model.InlineResponse2005Choices

## Load the model package
```dart
import 'package:stability_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | **int** | The index of the chat completion choice. | 
**message** | [**ChatCompletionResponseMessage**](ChatCompletionResponseMessage.md) |  | 
**finishReason** | **String** | The reason the model stopped generating tokens. This will be \"stop\" if the model hit a natural stop point or a provided stop sequence, or \"length\" if the maximum number of tokens specified in the request was reached.  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


