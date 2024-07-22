// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_response2006.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineResponse2006 extends InlineResponse2006 {
  @override
  final BuiltList<Image>? artifacts;

  factory _$InlineResponse2006(
          [void Function(InlineResponse2006Builder)? updates]) =>
      (new InlineResponse2006Builder()..update(updates))._build();

  _$InlineResponse2006._({this.artifacts}) : super._();

  @override
  InlineResponse2006 rebuild(
          void Function(InlineResponse2006Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2006Builder toBuilder() =>
      new InlineResponse2006Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2006 && artifacts == other.artifacts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, artifacts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InlineResponse2006')
          ..add('artifacts', artifacts))
        .toString();
  }
}

class InlineResponse2006Builder
    implements Builder<InlineResponse2006, InlineResponse2006Builder> {
  _$InlineResponse2006? _$v;

  ListBuilder<Image>? _artifacts;
  ListBuilder<Image> get artifacts =>
      _$this._artifacts ??= new ListBuilder<Image>();
  set artifacts(ListBuilder<Image>? artifacts) => _$this._artifacts = artifacts;

  InlineResponse2006Builder() {
    InlineResponse2006._defaults(this);
  }

  InlineResponse2006Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _artifacts = $v.artifacts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse2006 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineResponse2006;
  }

  @override
  void update(void Function(InlineResponse2006Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineResponse2006 build() => _build();

  _$InlineResponse2006 _build() {
    _$InlineResponse2006 _$result;
    try {
      _$result =
          _$v ?? new _$InlineResponse2006._(artifacts: _artifacts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'artifacts';
        _artifacts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InlineResponse2006', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
