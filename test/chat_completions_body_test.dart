import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for ChatCompletionsBody
void main() {
  final instance = ChatCompletionsBodyBuilder();
  // TODO add properties to the builder and call build()

  group(ChatCompletionsBody, () {
    // String model
    test('to test the property `model`', () async {
      // TODO
    });

    // A list of messages comprising the conversation so far.
    // BuiltList<ChatCompletionRequestMessage> messages
    test('to test the property `messages`', () async {
      // TODO
    });

    // A list of tools the model may call. Currently, only functions are supported as a tool. Use this to provide a list of functions the model may generate JSON inputs for.
    // BuiltList<ChatCompletionTool> tools
    test('to test the property `tools`', () async {
      // TODO
    });

    // The maximum number of tokens to generate in the completion.  If the token count of your prompt (previous messages) plus 'max_tokens' exceed the model's context length, the behavior is depends on 'context_length_exceeded_behavior'. By default, 'max_tokens' will be lowered to fit in the context window instead of returning an error.
    // int maxTokens (default value: 200)
    test('to test the property `maxTokens`', () async {
      // TODO
    });

    // The size to which to truncate chat prompts. Earlier user/assistant messages will be evicted to fit the prompt into this length.  This should usually be set to a number << the max context size of the model, to allow enough remaining tokens for generating a response.  If omitted, you may receive \"prompt too long\" errors in your responses as conversations grow. Note that even with this set, you may still receive \"prompt too long\" errors if individual messages are too long for the model context window.
    // int promptTruncateLen (default value: 1500)
    test('to test the property `promptTruncateLen`', () async {
      // TODO
    });

    // What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.  We generally recommend altering this or 'top_p' but not both.
    // num temperature (default value: 1)
    test('to test the property `temperature`', () async {
      // TODO
    });

    // An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.  We generally recommend altering this or 'temperature' but not both.
    // num topP (default value: 1)
    test('to test the property `topP`', () async {
      // TODO
    });

    // Top-k sampling is another sampling method where the k most probable next tokens are filtered and the probability mass is redistributed among only those k next tokens. The value of k controls the number of candidates for the next token at each step during text generation.
    // int topK
    test('to test the property `topK`', () async {
      // TODO
    });

    // Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim.  Reasonable value is around 0.1 to 1 if the aim is to just reduce repetitive samples somewhat. If the aim is to strongly suppress repetition, then one can increase the coefficients up to 2, but this can noticeably degrade the quality of samples. Negative values can be used to increase the likelihood of repetition.  See also 'presence_penalty' for penalizing tokens that have at least one appearance at a fixed rate.
    // num frequencyPenalty (default value: 0)
    test('to test the property `frequencyPenalty`', () async {
      // TODO
    });

    // Number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics.  Reasonable value is around 0.1 to 1 if the aim is to just reduce repetitive samples somewhat. If the aim is to strongly suppress repetition, then one can increase the coefficients up to 2, but this can noticeably degrade the quality of samples. Negative values can be used to increase the likelihood of repetition.  See also 'frequency_penalty' for penalizing tokens at an increasing rate depending on how often they appear.
    // num presencePenalty (default value: 0)
    test('to test the property `presencePenalty`', () async {
      // TODO
    });

    // How many completions to generate for each prompt.  **Note:** Because this parameter generates many completions, it can quickly consume your token quota. Use carefully and ensure that you have reasonable settings for 'max_tokens' and 'stop'.
    // int n (default value: 1)
    test('to test the property `n`', () async {
      // TODO
    });

    // BaseCreateCompletionRequestStop stop
    test('to test the property `stop`', () async {
      // TODO
    });

    // BaseCreateCompletionRequestResponseFormat responseFormat
    test('to test the property `responseFormat`', () async {
      // TODO
    });

    // Whether to stream back partial progress. If set, tokens will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available, with the stream terminated by a 'data: [DONE]' message.
    // bool stream (default value: false)
    test('to test the property `stream`', () async {
      // TODO
    });

    // What to do if the token count of prompt plus 'max_tokens' exceeds the model's context window.  Passing 'truncate' limits the 'max_tokens' to at most 'context_window_length - prompt_length'. This is the default.  Passing 'error' would trigger a request error.  The default of 'truncate' is selected as it allows to ask for high 'max_tokens' value while respecting the context window length without having to do client-side prompt tokenization.  Note, that it differs from OpenAI's behavior that matches that of 'error'.
    // String contextLengthExceededBehavior
    test('to test the property `contextLengthExceededBehavior`', () async {
      // TODO
    });

    // A unique identifier representing your end-user, which can help monitor and detect abuse
    // String user
    test('to test the property `user`', () async {
      // TODO
    });
  });
}
