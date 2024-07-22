import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

// tests for InlineResponse2003
void main() {
  final instance = InlineResponse2003Builder();
  // TODO add properties to the builder and call build()

  group(InlineResponse2003, () {
    // The generated video, encoded to base64.
    // String video
    test('to test the property `video`', () async {
      // TODO
    });

    // The reason the generation finished.  - `SUCCESS` = successful generation. - `CONTENT_FILTERED` = successful generation, however the output violated our content moderation  policy and one or more frames have been blurred as a result.
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
