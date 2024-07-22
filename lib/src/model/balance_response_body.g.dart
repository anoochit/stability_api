// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_response_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BalanceResponseBody extends BalanceResponseBody {
  @override
  final double credits;

  factory _$BalanceResponseBody(
          [void Function(BalanceResponseBodyBuilder)? updates]) =>
      (new BalanceResponseBodyBuilder()..update(updates))._build();

  _$BalanceResponseBody._({required this.credits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        credits, r'BalanceResponseBody', 'credits');
  }

  @override
  BalanceResponseBody rebuild(
          void Function(BalanceResponseBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BalanceResponseBodyBuilder toBuilder() =>
      new BalanceResponseBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BalanceResponseBody && credits == other.credits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BalanceResponseBody')
          ..add('credits', credits))
        .toString();
  }
}

class BalanceResponseBodyBuilder
    implements Builder<BalanceResponseBody, BalanceResponseBodyBuilder> {
  _$BalanceResponseBody? _$v;

  double? _credits;
  double? get credits => _$this._credits;
  set credits(double? credits) => _$this._credits = credits;

  BalanceResponseBodyBuilder() {
    BalanceResponseBody._defaults(this);
  }

  BalanceResponseBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credits = $v.credits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BalanceResponseBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BalanceResponseBody;
  }

  @override
  void update(void Function(BalanceResponseBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BalanceResponseBody build() => _build();

  _$BalanceResponseBody _build() {
    final _$result = _$v ??
        new _$BalanceResponseBody._(
            credits: BuiltValueNullFieldError.checkNotNull(
                credits, r'BalanceResponseBody', 'credits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
