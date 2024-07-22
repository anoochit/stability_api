# stability_api.model.ChatCompletionsBody

## Load the model package
```dart
import 'package:stability_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | **String** |  | 
**messages** | [**BuiltList&lt;ChatCompletionRequestMessage&gt;**](ChatCompletionRequestMessage.md) | A list of messages comprising the conversation so far. | 
**tools** | [**BuiltList&lt;ChatCompletionTool&gt;**](ChatCompletionTool.md) | A list of tools the model may call. Currently, only functions are supported as a tool. Use this to provide a list of functions the model may generate JSON inputs for.  | [optional] 
**maxTokens** | **int** | The maximum number of tokens to generate in the completion.  If the token count of your prompt (previous messages) plus 'max_tokens' exceed the model's context length, the behavior is depends on 'context_length_exceeded_behavior'. By default, 'max_tokens' will be lowered to fit in the context window instead of returning an error.  | [optional] [default to 200]
**promptTruncateLen** | **int** | The size to which to truncate chat prompts. Earlier user/assistant messages will be evicted to fit the prompt into this length.  This should usually be set to a number << the max context size of the model, to allow enough remaining tokens for generating a response.  If omitted, you may receive \"prompt too long\" errors in your responses as conversations grow. Note that even with this set, you may still receive \"prompt too long\" errors if individual messages are too long for the model context window.  | [optional] [default to 1500]
**temperature** | **num** | What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.  We generally recommend altering this or 'top_p' but not both.  | [optional] [default to 1]
**topP** | **num** | An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.  We generally recommend altering this or 'temperature' but not both.  | [optional] [default to 1]
**topK** | **int** | Top-k sampling is another sampling method where the k most probable next tokens are filtered and the probability mass is redistributed among only those k next tokens. The value of k controls the number of candidates for the next token at each step during text generation.  | [optional] 
**frequencyPenalty** | **num** | Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim.  Reasonable value is around 0.1 to 1 if the aim is to just reduce repetitive samples somewhat. If the aim is to strongly suppress repetition, then one can increase the coefficients up to 2, but this can noticeably degrade the quality of samples. Negative values can be used to increase the likelihood of repetition.  See also 'presence_penalty' for penalizing tokens that have at least one appearance at a fixed rate.  | [optional] [default to 0]
**presencePenalty** | **num** | Number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics.  Reasonable value is around 0.1 to 1 if the aim is to just reduce repetitive samples somewhat. If the aim is to strongly suppress repetition, then one can increase the coefficients up to 2, but this can noticeably degrade the quality of samples. Negative values can be used to increase the likelihood of repetition.  See also 'frequency_penalty' for penalizing tokens at an increasing rate depending on how often they appear.  | [optional] [default to 0]
**n** | **int** | How many completions to generate for each prompt.  **Note:** Because this parameter generates many completions, it can quickly consume your token quota. Use carefully and ensure that you have reasonable settings for 'max_tokens' and 'stop'.  | [optional] [default to 1]
**stop** | [**BaseCreateCompletionRequestStop**](BaseCreateCompletionRequestStop.md) |  | [optional] 
**responseFormat** | [**BaseCreateCompletionRequestResponseFormat**](BaseCreateCompletionRequestResponseFormat.md) |  | [optional] 
**stream** | **bool** | Whether to stream back partial progress. If set, tokens will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available, with the stream terminated by a 'data: [DONE]' message.  | [optional] [default to false]
**contextLengthExceededBehavior** | **String** | What to do if the token count of prompt plus 'max_tokens' exceeds the model's context window.  Passing 'truncate' limits the 'max_tokens' to at most 'context_window_length - prompt_length'. This is the default.  Passing 'error' would trigger a request error.  The default of 'truncate' is selected as it allows to ask for high 'max_tokens' value while respecting the context window length without having to do client-side prompt tokenization.  Note, that it differs from OpenAI's behavior that matches that of 'error'.  | [optional] 
**user** | **String** | A unique identifier representing your end-user, which can help monitor and detect abuse | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


