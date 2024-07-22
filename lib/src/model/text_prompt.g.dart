// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_prompt.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TextPrompt extends TextPrompt {
  @override
  final String text;
  @override
  final double? weight;

  factory _$TextPrompt([void Function(TextPromptBuilder)? updates]) =>
      (new TextPromptBuilder()..update(updates))._build();

  _$TextPrompt._({required this.text, this.weight}) : super._() {
    BuiltValueNullFieldError.checkNotNull(text, r'TextPrompt', 'text');
  }

  @override
  TextPrompt rebuild(void Function(TextPromptBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TextPromptBuilder toBuilder() => new TextPromptBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TextPrompt && text == other.text && weight == other.weight;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TextPrompt')
          ..add('text', text)
          ..add('weight', weight))
        .toString();
  }
}

class TextPromptBuilder implements Builder<TextPrompt, TextPromptBuilder> {
  _$TextPrompt? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  double? _weight;
  double? get weight => _$this._weight;
  set weight(double? weight) => _$this._weight = weight;

  TextPromptBuilder() {
    TextPrompt._defaults(this);
  }

  TextPromptBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _weight = $v.weight;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TextPrompt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TextPrompt;
  }

  @override
  void update(void Function(TextPromptBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TextPrompt build() => _build();

  _$TextPrompt _build() {
    final _$result = _$v ??
        new _$TextPrompt._(
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'TextPrompt', 'text'),
            weight: weight);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
