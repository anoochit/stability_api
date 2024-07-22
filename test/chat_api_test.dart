import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

/// tests for ChatApi
void main() {
  final instance = StabilityApi().getChatApi();

  group(ChatApi, () {
    // Create a completion
    //
    // Create a chat completion using a StabilityAI LLM.  ### Streaming Streaming responses is supported by HTTP streaming, which can be enabled by passing in the `stream` parameter as `true`. Instead of a single response with the completion, you will receive a stream of responses, each containing the next token/word of the completion.
    //
    //Future<InlineResponse2005> v2betaStableLmChatCompletionsPost(String authorization, String contentType, { ChatCompletionsBody chatCompletionsBody }) async
    test('test v2betaStableLmChatCompletionsPost', () async {
      // TODO
    });
  });
}
