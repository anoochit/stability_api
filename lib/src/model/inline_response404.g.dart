// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_response404.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineResponse404 extends InlineResponse404 {
  @override
  final String id;
  @override
  final String name;
  @override
  final BuiltList<String> errors;

  factory _$InlineResponse404(
          [void Function(InlineResponse404Builder)? updates]) =>
      (new InlineResponse404Builder()..update(updates))._build();

  _$InlineResponse404._(
      {required this.id, required this.name, required this.errors})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'InlineResponse404', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'InlineResponse404', 'name');
    BuiltValueNullFieldError.checkNotNull(
        errors, r'InlineResponse404', 'errors');
  }

  @override
  InlineResponse404 rebuild(void Function(InlineResponse404Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse404Builder toBuilder() =>
      new InlineResponse404Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse404 &&
        id == other.id &&
        name == other.name &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InlineResponse404')
          ..add('id', id)
          ..add('name', name)
          ..add('errors', errors))
        .toString();
  }
}

class InlineResponse404Builder
    implements Builder<InlineResponse404, InlineResponse404Builder> {
  _$InlineResponse404? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _errors;
  ListBuilder<String> get errors =>
      _$this._errors ??= new ListBuilder<String>();
  set errors(ListBuilder<String>? errors) => _$this._errors = errors;

  InlineResponse404Builder() {
    InlineResponse404._defaults(this);
  }

  InlineResponse404Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _errors = $v.errors.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse404 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineResponse404;
  }

  @override
  void update(void Function(InlineResponse404Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineResponse404 build() => _build();

  _$InlineResponse404 _build() {
    _$InlineResponse404 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse404._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'InlineResponse404', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'InlineResponse404', 'name'),
              errors: errors.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InlineResponse404', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
