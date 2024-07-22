// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_parameters.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FunctionParametersTypeEnum _$functionParametersTypeEnum_object =
    const FunctionParametersTypeEnum._('object');

FunctionParametersTypeEnum _$functionParametersTypeEnumValueOf(String name) {
  switch (name) {
    case 'object':
      return _$functionParametersTypeEnum_object;
    default:
      return _$functionParametersTypeEnum_object;
  }
}

final BuiltSet<FunctionParametersTypeEnum> _$functionParametersTypeEnumValues =
    new BuiltSet<FunctionParametersTypeEnum>(const <FunctionParametersTypeEnum>[
  _$functionParametersTypeEnum_object,
]);

Serializer<FunctionParametersTypeEnum> _$functionParametersTypeEnumSerializer =
    new _$FunctionParametersTypeEnumSerializer();

class _$FunctionParametersTypeEnumSerializer
    implements PrimitiveSerializer<FunctionParametersTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'object': 'object',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'object': 'object',
  };

  @override
  final Iterable<Type> types = const <Type>[FunctionParametersTypeEnum];
  @override
  final String wireName = 'FunctionParametersTypeEnum';

  @override
  Object serialize(Serializers serializers, FunctionParametersTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FunctionParametersTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FunctionParametersTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FunctionParameters extends FunctionParameters {
  @override
  final FunctionParametersTypeEnum? type;
  @override
  final BuiltList<String>? required_;
  @override
  final BuiltMap<String, FunctionParametersProperties>? properties;

  factory _$FunctionParameters(
          [void Function(FunctionParametersBuilder)? updates]) =>
      (new FunctionParametersBuilder()..update(updates))._build();

  _$FunctionParameters._({this.type, this.required_, this.properties})
      : super._();

  @override
  FunctionParameters rebuild(
          void Function(FunctionParametersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FunctionParametersBuilder toBuilder() =>
      new FunctionParametersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FunctionParameters &&
        type == other.type &&
        required_ == other.required_ &&
        properties == other.properties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FunctionParameters')
          ..add('type', type)
          ..add('required_', required_)
          ..add('properties', properties))
        .toString();
  }
}

class FunctionParametersBuilder
    implements Builder<FunctionParameters, FunctionParametersBuilder> {
  _$FunctionParameters? _$v;

  FunctionParametersTypeEnum? _type;
  FunctionParametersTypeEnum? get type => _$this._type;
  set type(FunctionParametersTypeEnum? type) => _$this._type = type;

  ListBuilder<String>? _required_;
  ListBuilder<String> get required_ =>
      _$this._required_ ??= new ListBuilder<String>();
  set required_(ListBuilder<String>? required_) =>
      _$this._required_ = required_;

  MapBuilder<String, FunctionParametersProperties>? _properties;
  MapBuilder<String, FunctionParametersProperties> get properties =>
      _$this._properties ??=
          new MapBuilder<String, FunctionParametersProperties>();
  set properties(
          MapBuilder<String, FunctionParametersProperties>? properties) =>
      _$this._properties = properties;

  FunctionParametersBuilder() {
    FunctionParameters._defaults(this);
  }

  FunctionParametersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _required_ = $v.required_?.toBuilder();
      _properties = $v.properties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FunctionParameters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FunctionParameters;
  }

  @override
  void update(void Function(FunctionParametersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FunctionParameters build() => _build();

  _$FunctionParameters _build() {
    _$FunctionParameters _$result;
    try {
      _$result = _$v ??
          new _$FunctionParameters._(
              type: type,
              required_: _required_?.build(),
              properties: _properties?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'required_';
        _required_?.build();
        _$failedField = 'properties';
        _properties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FunctionParameters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
