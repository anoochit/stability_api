// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_response413.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineResponse413 extends InlineResponse413 {
  @override
  final String id;
  @override
  final String name;
  @override
  final BuiltList<String> errors;

  factory _$InlineResponse413(
          [void Function(InlineResponse413Builder)? updates]) =>
      (new InlineResponse413Builder()..update(updates))._build();

  _$InlineResponse413._(
      {required this.id, required this.name, required this.errors})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'InlineResponse413', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'InlineResponse413', 'name');
    BuiltValueNullFieldError.checkNotNull(
        errors, r'InlineResponse413', 'errors');
  }

  @override
  InlineResponse413 rebuild(void Function(InlineResponse413Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse413Builder toBuilder() =>
      new InlineResponse413Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse413 &&
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
    return (newBuiltValueToStringHelper(r'InlineResponse413')
          ..add('id', id)
          ..add('name', name)
          ..add('errors', errors))
        .toString();
  }
}

class InlineResponse413Builder
    implements Builder<InlineResponse413, InlineResponse413Builder> {
  _$InlineResponse413? _$v;

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

  InlineResponse413Builder() {
    InlineResponse413._defaults(this);
  }

  InlineResponse413Builder get _$this {
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
  void replace(InlineResponse413 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineResponse413;
  }

  @override
  void update(void Function(InlineResponse413Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineResponse413 build() => _build();

  _$InlineResponse413 _build() {
    _$InlineResponse413 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse413._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'InlineResponse413', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'InlineResponse413', 'name'),
              errors: errors.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InlineResponse413', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
