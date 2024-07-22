import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for CreateChatCompletionExclusiveFields
void main() {
  //final instance = CreateChatCompletionExclusiveFieldsBuilder();
  // TODO add properties to the builder and call build()

  group(CreateChatCompletionExclusiveFields, () {
    // The name of the model to use.
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
  });
}
