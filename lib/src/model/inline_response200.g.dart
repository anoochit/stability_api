// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_response200.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineResponse200 extends InlineResponse200 {
  @override
  final String id;

  factory _$InlineResponse200(
          [void Function(InlineResponse200Builder)? updates]) =>
      (new InlineResponse200Builder()..update(updates))._build();

  _$InlineResponse200._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'InlineResponse200', 'id');
  }

  @override
  InlineResponse200 rebuild(void Function(InlineResponse200Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse200Builder toBuilder() =>
      new InlineResponse200Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse200 && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InlineResponse200')..add('id', id))
        .toString();
  }
}

class InlineResponse200Builder
    implements Builder<InlineResponse200, InlineResponse200Builder> {
  _$InlineResponse200? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  InlineResponse200Builder() {
    InlineResponse200._defaults(this);
  }

  InlineResponse200Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse200 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineResponse200;
  }

  @override
  void update(void Function(InlineResponse200Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineResponse200 build() => _build();

  _$InlineResponse200 _build() {
    final _$result = _$v ??
        new _$InlineResponse200._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'InlineResponse200', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
