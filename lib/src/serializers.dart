//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:stability_api/src/date_serializer.dart';
import 'package:stability_api/src/model/date.dart';

import 'package:stability_api/src/model/account_response_body.dart';
import 'package:stability_api/src/model/balance_response_body.dart';
import 'package:stability_api/src/model/base_create_completion_request.dart';
import 'package:stability_api/src/model/base_create_completion_request_response_format.dart';
import 'package:stability_api/src/model/base_create_completion_request_stop.dart';
import 'package:stability_api/src/model/chat_completion_message_tool_call.dart';
import 'package:stability_api/src/model/chat_completion_message_tool_call_function.dart';
import 'package:stability_api/src/model/chat_completion_request_message.dart';
import 'package:stability_api/src/model/chat_completion_request_message_content.dart';
import 'package:stability_api/src/model/chat_completion_response_message.dart';
import 'package:stability_api/src/model/chat_completion_tool.dart';
import 'package:stability_api/src/model/chat_completions_body.dart';
import 'package:stability_api/src/model/chat_message_content.dart';
import 'package:stability_api/src/model/chat_message_content_image_url.dart';
import 'package:stability_api/src/model/chat_message_content_one_of.dart';
import 'package:stability_api/src/model/chat_message_content_one_of1.dart';
import 'package:stability_api/src/model/clip_guidance_preset.dart';
import 'package:stability_api/src/model/content_moderation_response.dart';
import 'package:stability_api/src/model/create_chat_completion_exclusive_fields.dart';
import 'package:stability_api/src/model/engine.dart';
import 'package:stability_api/src/model/error.dart';
import 'package:stability_api/src/model/finish_reason.dart';
import 'package:stability_api/src/model/function_object.dart';
import 'package:stability_api/src/model/function_parameters.dart';
import 'package:stability_api/src/model/function_parameters_properties.dart';
import 'package:stability_api/src/model/generation_request_optional_params.dart';
import 'package:stability_api/src/model/image.dart';
import 'package:stability_api/src/model/image_to_image_using_image_strength_request_body.dart';
import 'package:stability_api/src/model/image_to_image_using_step_schedule_request_body.dart';
import 'package:stability_api/src/model/init_image_mode.dart';
import 'package:stability_api/src/model/inline_response200.dart';
import 'package:stability_api/src/model/inline_response2001.dart';
import 'package:stability_api/src/model/inline_response2002.dart';
import 'package:stability_api/src/model/inline_response2003.dart';
import 'package:stability_api/src/model/inline_response2004.dart';
import 'package:stability_api/src/model/inline_response2005.dart';
import 'package:stability_api/src/model/inline_response2005_choices.dart';
import 'package:stability_api/src/model/inline_response2006.dart';
import 'package:stability_api/src/model/inline_response202.dart';
import 'package:stability_api/src/model/inline_response400.dart';
import 'package:stability_api/src/model/inline_response404.dart';
import 'package:stability_api/src/model/inline_response413.dart';
import 'package:stability_api/src/model/inline_response429.dart';
import 'package:stability_api/src/model/inline_response500.dart';
import 'package:stability_api/src/model/masking_using_init_image_alpha_request_body.dart';
import 'package:stability_api/src/model/masking_using_mask_image_request_body.dart';
import 'package:stability_api/src/model/organization_membership.dart';
import 'package:stability_api/src/model/sampler.dart';
import 'package:stability_api/src/model/style_preset.dart';
import 'package:stability_api/src/model/text_prompt.dart';
import 'package:stability_api/src/model/text_to_image_request_body.dart';
import 'package:stability_api/src/model/usage_info.dart';

part 'serializers.g.dart';

@SerializersFor([
  AccountResponseBody,
  BalanceResponseBody,
  BaseCreateCompletionRequest,
  $BaseCreateCompletionRequest,
  BaseCreateCompletionRequestResponseFormat,
  BaseCreateCompletionRequestStop,
  ChatCompletionMessageToolCall,
  ChatCompletionMessageToolCallFunction,
  ChatCompletionRequestMessage,
  ChatCompletionRequestMessageContent,
  ChatCompletionResponseMessage,
  ChatCompletionTool,
  ChatCompletionsBody,
  ChatMessageContent,
  ChatMessageContentImageUrl,
  ChatMessageContentOneOf,
  ChatMessageContentOneOf1,
  ClipGuidancePreset,
  ContentModerationResponse,
  CreateChatCompletionExclusiveFields,
  $CreateChatCompletionExclusiveFields,
  Engine,
  Error,
  FinishReason,
  FunctionObject,
  FunctionParameters,
  FunctionParametersProperties,
  GenerationRequestOptionalParams,
  $GenerationRequestOptionalParams,
  Image,
  ImageToImageUsingImageStrengthRequestBody,
  ImageToImageUsingStepScheduleRequestBody,
  InitImageMode,
  InlineResponse200,
  InlineResponse2001,
  InlineResponse2002,
  InlineResponse2003,
  InlineResponse2004,
  InlineResponse2005,
  InlineResponse2005Choices,
  InlineResponse2006,
  InlineResponse202,
  InlineResponse400,
  InlineResponse404,
  InlineResponse413,
  InlineResponse429,
  InlineResponse500,
  MaskingUsingInitImageAlphaRequestBody,
  MaskingUsingMaskImageRequestBody,
  OrganizationMembership,
  Sampler,
  StylePreset,
  TextPrompt,
  TextToImageRequestBody,
  UsageInfo,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Engine)]),
        () => ListBuilder<Engine>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TextPrompt)]),
        () => ListBuilder<TextPrompt>(),
      )
      ..add(BaseCreateCompletionRequest.serializer)
      ..add(CreateChatCompletionExclusiveFields.serializer)
      ..add(GenerationRequestOptionalParams.serializer)
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
