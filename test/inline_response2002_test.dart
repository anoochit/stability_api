import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for InlineResponse2002
void main() {
  final instance = InlineResponse2002Builder();
  // TODO add properties to the builder and call build()

  group(InlineResponse2002, () {
    // The generated image, encoded to base64.
    // String image
    test('to test the property `image`', () async {
      // TODO
    });

    // The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and has been blurred as a result.
    // String finishReason
    test('to test the property `finishReason`', () async {
      // TODO
    });

    // The seed used as random noise for this generation.
    // num seed (default value: 0)
    test('to test the property `seed`', () async {
      // TODO
    });
  });
}
