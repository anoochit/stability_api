//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'finish_reason.g.dart';

class FinishReason extends EnumClass {
  /// The result of the generation process. - `SUCCESS` indicates success - `ERROR` indicates an error - `CONTENT_FILTERED` indicates the result affected by the content filter and may be blurred.  This header is only present when the `Accept` is set to `image/png`.  Otherwise it is returned in the response body.
  @BuiltValueEnumConst(wireName: r'CONTENT_FILTERED')
  static const FinishReason CONTENT_FILTERED = _$CONTENT_FILTERED;

  /// The result of the generation process. - `SUCCESS` indicates success - `ERROR` indicates an error - `CONTENT_FILTERED` indicates the result affected by the content filter and may be blurred.  This header is only present when the `Accept` is set to `image/png`.  Otherwise it is returned in the response body.
  @BuiltValueEnumConst(wireName: r'ERROR')
  static const FinishReason ERROR = _$ERROR;

  /// The result of the generation process. - `SUCCESS` indicates success - `ERROR` indicates an error - `CONTENT_FILTERED` indicates the result affected by the content filter and may be blurred.  This header is only present when the `Accept` is set to `image/png`.  Otherwise it is returned in the response body.
  @BuiltValueEnumConst(wireName: r'SUCCESS', fallback: true)
  static const FinishReason SUCCESS = _$SUCCESS;

  static Serializer<FinishReason> get serializer => _$finishReasonSerializer;

  const FinishReason._(String name) : super(name);

  static BuiltSet<FinishReason> get values => _$values;
  static FinishReason valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class FinishReasonMixin = Object with _$FinishReasonMixin;
