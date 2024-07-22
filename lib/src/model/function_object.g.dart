// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FunctionObject extends FunctionObject {
  @override
  final String name;
  @override
  final FunctionParameters parameters;
  @override
  final String? description;

  factory _$FunctionObject([void Function(FunctionObjectBuilder)? updates]) =>
      (new FunctionObjectBuilder()..update(updates))._build();

  _$FunctionObject._(
      {required this.name, required this.parameters, this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'FunctionObject', 'name');
    BuiltValueNullFieldError.checkNotNull(
        parameters, r'FunctionObject', 'parameters');
  }

  @override
  FunctionObject rebuild(void Function(FunctionObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FunctionObjectBuilder toBuilder() =>
      new FunctionObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FunctionObject &&
        name == other.name &&
        parameters == other.parameters &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FunctionObject')
          ..add('name', name)
          ..add('parameters', parameters)
          ..add('description', description))
        .toString();
  }
}

class FunctionObjectBuilder
    implements Builder<FunctionObject, FunctionObjectBuilder> {
  _$FunctionObject? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  FunctionParametersBuilder? _parameters;
  FunctionParametersBuilder get parameters =>
      _$this._parameters ??= new FunctionParametersBuilder();
  set parameters(FunctionParametersBuilder? parameters) =>
      _$this._parameters = parameters;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  FunctionObjectBuilder() {
    FunctionObject._defaults(this);
  }

  FunctionObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _parameters = $v.parameters.toBuilder();
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FunctionObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FunctionObject;
  }

  @override
  void update(void Function(FunctionObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FunctionObject build() => _build();

  _$FunctionObject _build() {
    _$FunctionObject _$result;
    try {
      _$result = _$v ??
          new _$FunctionObject._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'FunctionObject', 'name'),
              parameters: parameters.build(),
              description: description);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        parameters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FunctionObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
