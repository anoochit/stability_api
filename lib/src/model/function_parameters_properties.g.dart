// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_parameters_properties.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FunctionParametersProperties extends FunctionParametersProperties {
  @override
  final String? type;
  @override
  final String? description;

  factory _$FunctionParametersProperties(
          [void Function(FunctionParametersPropertiesBuilder)? updates]) =>
      (new FunctionParametersPropertiesBuilder()..update(updates))._build();

  _$FunctionParametersProperties._({this.type, this.description}) : super._();

  @override
  FunctionParametersProperties rebuild(
          void Function(FunctionParametersPropertiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FunctionParametersPropertiesBuilder toBuilder() =>
      new FunctionParametersPropertiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FunctionParametersProperties &&
        type == other.type &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FunctionParametersProperties')
          ..add('type', type)
          ..add('description', description))
        .toString();
  }
}

class FunctionParametersPropertiesBuilder
    implements
        Builder<FunctionParametersProperties,
            FunctionParametersPropertiesBuilder> {
  _$FunctionParametersProperties? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  FunctionParametersPropertiesBuilder() {
    FunctionParametersProperties._defaults(this);
  }

  FunctionParametersPropertiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FunctionParametersProperties other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FunctionParametersProperties;
  }

  @override
  void update(void Function(FunctionParametersPropertiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FunctionParametersProperties build() => _build();

  _$FunctionParametersProperties _build() {
    final _$result = _$v ??
        new _$FunctionParametersProperties._(
            type: type, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
