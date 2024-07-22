# stability_api.model.CreateChatCompletionExclusiveFields

## Load the model package
```dart
import 'package:stability_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | **String** | The name of the model to use. | 
**messages** | [**BuiltList&lt;ChatCompletionRequestMessage&gt;**](ChatCompletionRequestMessage.md) | A list of messages comprising the conversation so far. | 
**tools** | [**BuiltList&lt;ChatCompletionTool&gt;**](ChatCompletionTool.md) | A list of tools the model may call. Currently, only functions are supported as a tool. Use this to provide a list of functions the model may generate JSON inputs for.  | [optional] 
**maxTokens** | **int** | The maximum number of tokens to generate in the completion.  If the token count of your prompt (previous messages) plus 'max_tokens' exceed the model's context length, the behavior is depends on 'context_length_exceeded_behavior'. By default, 'max_tokens' will be lowered to fit in the context window instead of returning an error.  | [optional] [default to 200]
**promptTruncateLen** | **int** | The size to which to truncate chat prompts. Earlier user/assistant messages will be evicted to fit the prompt into this length.  This should usually be set to a number << the max context size of the model, to allow enough remaining tokens for generating a response.  If omitted, you may receive \"prompt too long\" errors in your responses as conversations grow. Note that even with this set, you may still receive \"prompt too long\" errors if individual messages are too long for the model context window.  | [optional] [default to 1500]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


