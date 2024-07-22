// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add($BaseCreateCompletionRequest.serializer)
      ..add($CreateChatCompletionExclusiveFields.serializer)
      ..add($GenerationRequestOptionalParams.serializer)
      ..add(AccountResponseBody.serializer)
      ..add(BalanceResponseBody.serializer)
      ..add(BaseCreateCompletionRequestContextLengthExceededBehaviorEnum
          .serializer)
      ..add(BaseCreateCompletionRequestResponseFormat.serializer)
      ..add(BaseCreateCompletionRequestResponseFormatTypeEnum.serializer)
      ..add(BaseCreateCompletionRequestStop.serializer)
      ..add(ChatCompletionMessageToolCall.serializer)
      ..add(ChatCompletionMessageToolCallFunction.serializer)
      ..add(ChatCompletionMessageToolCallTypeEnum.serializer)
      ..add(ChatCompletionRequestMessage.serializer)
      ..add(ChatCompletionRequestMessageContent.serializer)
      ..add(ChatCompletionRequestMessageRoleEnum.serializer)
      ..add(ChatCompletionResponseMessage.serializer)
      ..add(ChatCompletionResponseMessageRoleEnum.serializer)
      ..add(ChatCompletionTool.serializer)
      ..add(ChatCompletionToolTypeEnum.serializer)
      ..add(ChatCompletionsBody.serializer)
      ..add(ChatMessageContent.serializer)
      ..add(ChatMessageContentImageUrl.serializer)
      ..add(ChatMessageContentOneOf.serializer)
      ..add(ChatMessageContentOneOf1.serializer)
      ..add(ChatMessageContentOneOf1TypeEnum.serializer)
      ..add(ChatMessageContentOneOfTypeEnum.serializer)
      ..add(ClipGuidancePreset.serializer)
      ..add(ContentModerationResponse.serializer)
      ..add(ContentModerationResponseNameEnum.serializer)
      ..add(CreateChatCompletionExclusiveFieldsModelEnum.serializer)
      ..add(Engine.serializer)
      ..add(EngineTypeEnum.serializer)
      ..add(Error.serializer)
      ..add(FinishReason.serializer)
      ..add(FunctionObject.serializer)
      ..add(FunctionParameters.serializer)
      ..add(FunctionParametersProperties.serializer)
      ..add(FunctionParametersTypeEnum.serializer)
      ..add(Image.serializer)
      ..add(ImageFinishReasonEnum.serializer)
      ..add(ImageToImageUsingImageStrengthRequestBody.serializer)
      ..add(ImageToImageUsingStepScheduleRequestBody.serializer)
      ..add(InitImageMode.serializer)
      ..add(InlineResponse200.serializer)
      ..add(InlineResponse2001.serializer)
      ..add(InlineResponse2001FinishReasonEnum.serializer)
      ..add(InlineResponse2002.serializer)
      ..add(InlineResponse2002FinishReasonEnum.serializer)
      ..add(InlineResponse2003.serializer)
      ..add(InlineResponse2003FinishReasonEnum.serializer)
      ..add(InlineResponse2004.serializer)
      ..add(InlineResponse2004FinishReasonEnum.serializer)
      ..add(InlineResponse2005.serializer)
      ..add(InlineResponse2005Choices.serializer)
      ..add(InlineResponse2005ChoicesFinishReasonEnum.serializer)
      ..add(InlineResponse2006.serializer)
      ..add(InlineResponse202.serializer)
      ..add(InlineResponse202StatusEnum.serializer)
      ..add(InlineResponse400.serializer)
      ..add(InlineResponse404.serializer)
      ..add(InlineResponse413.serializer)
      ..add(InlineResponse429.serializer)
      ..add(InlineResponse500.serializer)
      ..add(MaskingUsingInitImageAlphaRequestBody.serializer)
      ..add(MaskingUsingMaskImageRequestBody.serializer)
      ..add(OrganizationMembership.serializer)
      ..add(Sampler.serializer)
      ..add(StylePreset.serializer)
      ..add(TextPrompt.serializer)
      ..add(TextToImageRequestBody.serializer)
      ..add(UsageInfo.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ChatCompletionMessageToolCall)]),
          () => new ListBuilder<ChatCompletionMessageToolCall>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ChatCompletionRequestMessage)]),
          () => new ListBuilder<ChatCompletionRequestMessage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ChatCompletionTool)]),
          () => new ListBuilder<ChatCompletionTool>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ChatCompletionRequestMessage)]),
          () => new ListBuilder<ChatCompletionRequestMessage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ChatCompletionTool)]),
          () => new ListBuilder<ChatCompletionTool>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Image)]),
          () => new ListBuilder<Image>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(InlineResponse2005Choices)]),
          () => new ListBuilder<InlineResponse2005Choices>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(OrganizationMembership)]),
          () => new ListBuilder<OrganizationMembership>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(FunctionParametersProperties)
          ]),
          () => new MapBuilder<String, FunctionParametersProperties>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TextPrompt)]),
          () => new ListBuilder<TextPrompt>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TextPrompt)]),
          () => new ListBuilder<TextPrompt>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TextPrompt)]),
          () => new ListBuilder<TextPrompt>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TextPrompt)]),
          () => new ListBuilder<TextPrompt>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TextPrompt)]),
          () => new ListBuilder<TextPrompt>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
