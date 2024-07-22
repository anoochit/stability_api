// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_create_completion_request_response_format.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BaseCreateCompletionRequestResponseFormatTypeEnum
    _$baseCreateCompletionRequestResponseFormatTypeEnum_text =
    const BaseCreateCompletionRequestResponseFormatTypeEnum._('text');
const BaseCreateCompletionRequestResponseFormatTypeEnum
    _$baseCreateCompletionRequestResponseFormatTypeEnum_jsonObject =
    const BaseCreateCompletionRequestResponseFormatTypeEnum._('jsonObject');

BaseCreateCompletionRequestResponseFormatTypeEnum
    _$baseCreateCompletionRequestResponseFormatTypeEnumValueOf(String name) {
  switch (name) {
    case 'text':
      return _$baseCreateCompletionRequestResponseFormatTypeEnum_text;
    case 'jsonObject':
      return _$baseCreateCompletionRequestResponseFormatTypeEnum_jsonObject;
    default:
      return _$baseCreateCompletionRequestResponseFormatTypeEnum_jsonObject;
  }
}

final BuiltSet<BaseCreateCompletionRequestResponseFormatTypeEnum>
    _$baseCreateCompletionRequestResponseFormatTypeEnumValues = new BuiltSet<
        BaseCreateCompletionRequestResponseFormatTypeEnum>(const <BaseCreateCompletionRequestResponseFormatTypeEnum>[
  _$baseCreateCompletionRequestResponseFormatTypeEnum_text,
  _$baseCreateCompletionRequestResponseFormatTypeEnum_jsonObject,
]);

Serializer<BaseCreateCompletionRequestResponseFormatTypeEnum>
    _$baseCreateCompletionRequestResponseFormatTypeEnumSerializer =
    new _$BaseCreateCompletionRequestResponseFormatTypeEnumSerializer();

class _$BaseCreateCompletionRequestResponseFormatTypeEnumSerializer
    implements
        PrimitiveSerializer<BaseCreateCompletionRequestResponseFormatTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'text': 'text',
    'jsonObject': 'json_object',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'text': 'text',
    'json_object': 'jsonObject',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BaseCreateCompletionRequestResponseFormatTypeEnum
  ];
  @override
  final String wireName = 'BaseCreateCompletionRequestResponseFormatTypeEnum';

  @override
  Object serialize(Serializers serializers,
          BaseCreateCompletionRequestResponseFormatTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BaseCreateCompletionRequestResponseFormatTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BaseCreateCompletionRequestResponseFormatTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BaseCreateCompletionRequestResponseFormat
    extends BaseCreateCompletionRequestResponseFormat {
  @override
  final BaseCreateCompletionRequestResponseFormatTypeEnum type;
  @override
  final JsonObject? schema;

  factory _$BaseCreateCompletionRequestResponseFormat(
          [void Function(BaseCreateCompletionRequestResponseFormatBuilder)?
              updates]) =>
      (new BaseCreateCompletionRequestResponseFormatBuilder()..update(updates))
          ._build();

  _$BaseCreateCompletionRequestResponseFormat._(
      {required this.type, this.schema})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'BaseCreateCompletionRequestResponseFormat', 'type');
  }

  @override
  BaseCreateCompletionRequestResponseFormat rebuild(
          void Function(BaseCreateCompletionRequestResponseFormatBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseCreateCompletionRequestResponseFormatBuilder toBuilder() =>
      new BaseCreateCompletionRequestResponseFormatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseCreateCompletionRequestResponseFormat &&
        type == other.type &&
        schema == other.schema;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, schema.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BaseCreateCompletionRequestResponseFormat')
          ..add('type', type)
          ..add('schema', schema))
        .toString();
  }
}

class BaseCreateCompletionRequestResponseFormatBuilder
    implements
        Builder<BaseCreateCompletionRequestResponseFormat,
            BaseCreateCompletionRequestResponseFormatBuilder> {
  _$BaseCreateCompletionRequestResponseFormat? _$v;

  BaseCreateCompletionRequestResponseFormatTypeEnum? _type;
  BaseCreateCompletionRequestResponseFormatTypeEnum? get type => _$this._type;
  set type(BaseCreateCompletionRequestResponseFormatTypeEnum? type) =>
      _$this._type = type;

  JsonObject? _schema;
  JsonObject? get schema => _$this._schema;
  set schema(JsonObject? schema) => _$this._schema = schema;

  BaseCreateCompletionRequestResponseFormatBuilder() {
    BaseCreateCompletionRequestResponseFormat._defaults(this);
  }

  BaseCreateCompletionRequestResponseFormatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _schema = $v.schema;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseCreateCompletionRequestResponseFormat other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BaseCreateCompletionRequestResponseFormat;
  }

  @override
  void update(
      void Function(BaseCreateCompletionRequestResponseFormatBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BaseCreateCompletionRequestResponseFormat build() => _build();

  _$BaseCreateCompletionRequestResponseFormat _build() {
    final _$result = _$v ??
        new _$BaseCreateCompletionRequestResponseFormat._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'BaseCreateCompletionRequestResponseFormat', 'type'),
            schema: schema);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
