// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_message_tool_call_function.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatCompletionMessageToolCallFunction
    extends ChatCompletionMessageToolCallFunction {
  @override
  final String name;
  @override
  final String arguments;

  factory _$ChatCompletionMessageToolCallFunction(
          [void Function(ChatCompletionMessageToolCallFunctionBuilder)?
              updates]) =>
      (new ChatCompletionMessageToolCallFunctionBuilder()..update(updates))
          ._build();

  _$ChatCompletionMessageToolCallFunction._(
      {required this.name, required this.arguments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'ChatCompletionMessageToolCallFunction', 'name');
    BuiltValueNullFieldError.checkNotNull(
        arguments, r'ChatCompletionMessageToolCallFunction', 'arguments');
  }

  @override
  ChatCompletionMessageToolCallFunction rebuild(
          void Function(ChatCompletionMessageToolCallFunctionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatCompletionMessageToolCallFunctionBuilder toBuilder() =>
      new ChatCompletionMessageToolCallFunctionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatCompletionMessageToolCallFunction &&
        name == other.name &&
        arguments == other.arguments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ChatCompletionMessageToolCallFunction')
          ..add('name', name)
          ..add('arguments', arguments))
        .toString();
  }
}

class ChatCompletionMessageToolCallFunctionBuilder
    implements
        Builder<ChatCompletionMessageToolCallFunction,
            ChatCompletionMessageToolCallFunctionBuilder> {
  _$ChatCompletionMessageToolCallFunction? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _arguments;
  String? get arguments => _$this._arguments;
  set arguments(String? arguments) => _$this._arguments = arguments;

  ChatCompletionMessageToolCallFunctionBuilder() {
    ChatCompletionMessageToolCallFunction._defaults(this);
  }

  ChatCompletionMessageToolCallFunctionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _arguments = $v.arguments;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatCompletionMessageToolCallFunction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatCompletionMessageToolCallFunction;
  }

  @override
  void update(
      void Function(ChatCompletionMessageToolCallFunctionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatCompletionMessageToolCallFunction build() => _build();

  _$ChatCompletionMessageToolCallFunction _build() {
    final _$result = _$v ??
        new _$ChatCompletionMessageToolCallFunction._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ChatCompletionMessageToolCallFunction', 'name'),
            arguments: BuiltValueNullFieldError.checkNotNull(arguments,
                r'ChatCompletionMessageToolCallFunction', 'arguments'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
