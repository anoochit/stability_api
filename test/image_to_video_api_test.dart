import 'package:test/test.dart';
import 'package:stability_api/stability_api.dart';

/// tests for ImageToVideoApi
void main() {
  final instance = StabilityApi().getImageToVideoApi();

  group(ImageToVideoApi, () {
    // Start generation
    //
    // Generate a short video based on an initial image with [Stable Video Diffusion](https://static1.squarespace.com/static/6213c340453c3f502425776e/t/655ce779b9d47d342a93c890/1700587395994/stable_video_diffusion.pdf), a latent video diffusion model.     ### How to use Please invoke this endpoint with a `POST` request.  The headers of the request must include an API key in the `authorization` field. The body of the request must be `multipart/form-data`.  The body of the request should include: - `image`  The body may optionally include: - `seed` - `cfg_scale` - `motion_bucket_id`  > **Note:** for more details about these parameters please see the request schema below.  After invoking this endpoint with the required parameters, use the `id` in the response to poll for results at the [image-to-video/result/{id}](#tag/Image-to-Video/paths/~1v2beta~1image-to-video~1result~1%7Bid%7D/get) endpoint.  Rate-limiting or other errors may occur if you poll more than once every 10 seconds.  ### Credits Flat rate of 20 credits per successful generation.  You will not be charged for failed generations.
    //
    //Future<InlineResponse200> v2betaImageToVideoPost(String authorization, String contentType, MultipartFile image, { num seed, num cfgScale, num motionBucketId }) async
    test('test v2betaImageToVideoPost', () async {
      // TODO
    });

    // Fetch generation result
    //
    // Fetch the result of an image-to-video generation by ID.  Make sure to use the same API key to fetch the generation result that you used to create the generation,  otherwise you will receive a `404` response.  ### How to use Please invoke this endpoint with a `GET` request.  The headers of the request must include an API key in the `authorization` field and the ID of your generation must be in the path.  ### How is progress reported? Your generation is either `in-progress` (i.e. status code `202`) or it is complete (i.e. status code `200`).  We may add more fine-grained progress reporting in the future (e.g. a numerical progress).  ### How long are results stored? Results are stored for 24 hours after generation. After that, the results are deleted and you will need to  re-generate your video.
    //
    //Future<Uint8List> v2betaImageToVideoResultIdGet(String id, String authorization, String accept) async
    test('test v2betaImageToVideoResultIdGet', () async {
      // TODO
    });
  });
}
