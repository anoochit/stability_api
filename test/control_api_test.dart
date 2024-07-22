import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

/// tests for ControlApi
void main() {
  final instance = StabilityApi().getControlApi();

  group(ControlApi, () {
    // Sketch
    //
    // This service offers an ideal solution for design projects that require brainstorming and frequent iterations. It upgrades rough hand-drawn sketches to refined outputs with precise  control. For non-sketch images, it allows detailed manipulation of the final appearance by  leveraging the contour lines and edges within the image.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=ZKIAqHzJzzUo)  ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.  The body of the request should include: - `image` - `prompt`  The body may optionally include: - `control_strength` - `negative_prompt` - `seed` - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will match that of the input image.  ### Credits Flat rate of 3 credits per successful generation. You will not be charged for failed generations.
    //
    //Future<Uint8List> v2betaStableImageControlSketchPost(String authorization, String contentType, String accept, String prompt, MultipartFile image, { num controlStrength, String negativePrompt, num seed, String outputFormat }) async
    test('test v2betaStableImageControlSketchPost', () async {
      // TODO
    });

    // Structure
    //
    // This service excels in generating images by maintaining the structure of an input image,  making it especially valuable for advanced content creation scenarios such as recreating  scenes or rendering characters from models.  ### Try it out Grab your [API key](https://platform.stability.ai/account/keys) and head over to [![Open Google Colab](https://platform.stability.ai/svg/google-colab.svg)](https://colab.research.google.com/github/stability-ai/stability-sdk/blob/main/nbs/Stable_Image_API_Public.ipynb#scrollTo=59RaZazXz0AU)  ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`, and the `accept` header should be set to one of the following:   - `image/_*` to receive the image in the format specified by the `output_format` parameter.   - `application/json` to receive the image encoded as base64 in a JSON response.  The body of the request should include: - `image` - `prompt`  The body may optionally include: - `control_strength` - `negative_prompt` - `seed` - `output_format`  > **Note:** for more details about these parameters please see the request schema below.  ### Output The resolution of the generated image will match that of the input image.  ### Credits Flat rate of 3 credits per successful generation. You will not be charged for failed generations.
    //
    //Future<Uint8List> v2betaStableImageControlStructurePost(String authorization, String contentType, String accept, String prompt, MultipartFile image, { num controlStrength, String negativePrompt, num seed, String outputFormat }) async
    test('test v2betaStableImageControlStructurePost', () async {
      // TODO
    });
  });
}
