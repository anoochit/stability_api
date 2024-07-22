// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_create_completion_request_stop.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseCreateCompletionRequestStop
    extends BaseCreateCompletionRequestStop {
  @override
  final OneOf oneOf;

  factory _$BaseCreateCompletionRequestStop(
          [void Function(BaseCreateCompletionRequestStopBuilder)? updates]) =>
      (new BaseCreateCompletionRequestStopBuilder()..update(updates))._build();

  _$BaseCreateCompletionRequestStop._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'BaseCreateCompletionRequestStop', 'oneOf');
  }

  @override
  BaseCreateCompletionRequestStop rebuild(
          void Function(BaseCreateCompletionRequestStopBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseCreateCompletionRequestStopBuilder toBuilder() =>
      new BaseCreateCompletionRequestStopBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseCreateCompletionRequestStop && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BaseCreateCompletionRequestStop')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class BaseCreateCompletionRequestStopBuilder
    implements
        Builder<BaseCreateCompletionRequestStop,
            BaseCreateCompletionRequestStopBuilder> {
  _$BaseCreateCompletionRequestStop? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  BaseCreateCompletionRequestStopBuilder() {
    BaseCreateCompletionRequestStop._defaults(this);
  }

  BaseCreateCompletionRequestStopBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseCreateCompletionRequestStop other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BaseCreateCompletionRequestStop;
  }

  @override
  void update(void Function(BaseCreateCompletionRequestStopBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaseCreateCompletionRequestStop build() => _build();

  _$BaseCreateCompletionRequestStop _build() {
    final _$result = _$v ??
        new _$BaseCreateCompletionRequestStop._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'BaseCreateCompletionRequestStop', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
