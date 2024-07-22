// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsageInfo extends UsageInfo {
  @override
  final int promptTokens;
  @override
  final int completionTokens;
  @override
  final int totalTokens;

  factory _$UsageInfo([void Function(UsageInfoBuilder)? updates]) =>
      (new UsageInfoBuilder()..update(updates))._build();

  _$UsageInfo._(
      {required this.promptTokens,
      required this.completionTokens,
      required this.totalTokens})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        promptTokens, r'UsageInfo', 'promptTokens');
    BuiltValueNullFieldError.checkNotNull(
        completionTokens, r'UsageInfo', 'completionTokens');
    BuiltValueNullFieldError.checkNotNull(
        totalTokens, r'UsageInfo', 'totalTokens');
  }

  @override
  UsageInfo rebuild(void Function(UsageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsageInfoBuilder toBuilder() => new UsageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsageInfo &&
        promptTokens == other.promptTokens &&
        completionTokens == other.completionTokens &&
        totalTokens == other.totalTokens;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, promptTokens.hashCode);
    _$hash = $jc(_$hash, completionTokens.hashCode);
    _$hash = $jc(_$hash, totalTokens.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsageInfo')
          ..add('promptTokens', promptTokens)
          ..add('completionTokens', completionTokens)
          ..add('totalTokens', totalTokens))
        .toString();
  }
}

class UsageInfoBuilder implements Builder<UsageInfo, UsageInfoBuilder> {
  _$UsageInfo? _$v;

  int? _promptTokens;
  int? get promptTokens => _$this._promptTokens;
  set promptTokens(int? promptTokens) => _$this._promptTokens = promptTokens;

  int? _completionTokens;
  int? get completionTokens => _$this._completionTokens;
  set completionTokens(int? completionTokens) =>
      _$this._completionTokens = completionTokens;

  int? _totalTokens;
  int? get totalTokens => _$this._totalTokens;
  set totalTokens(int? totalTokens) => _$this._totalTokens = totalTokens;

  UsageInfoBuilder() {
    UsageInfo._defaults(this);
  }

  UsageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _promptTokens = $v.promptTokens;
      _completionTokens = $v.completionTokens;
      _totalTokens = $v.totalTokens;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsageInfo;
  }

  @override
  void update(void Function(UsageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsageInfo build() => _build();

  _$UsageInfo _build() {
    final _$result = _$v ??
        new _$UsageInfo._(
            promptTokens: BuiltValueNullFieldError.checkNotNull(
                promptTokens, r'UsageInfo', 'promptTokens'),
            completionTokens: BuiltValueNullFieldError.checkNotNull(
                completionTokens, r'UsageInfo', 'completionTokens'),
            totalTokens: BuiltValueNullFieldError.checkNotNull(
                totalTokens, r'UsageInfo', 'totalTokens'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
