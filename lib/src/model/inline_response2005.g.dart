// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_response2005.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineResponse2005 extends InlineResponse2005 {
  @override
  final String id;
  @override
  final String object;
  @override
  final int created;
  @override
  final String model;
  @override
  final BuiltList<InlineResponse2005Choices> choices;
  @override
  final UsageInfo? usage;

  factory _$InlineResponse2005(
          [void Function(InlineResponse2005Builder)? updates]) =>
      (new InlineResponse2005Builder()..update(updates))._build();

  _$InlineResponse2005._(
      {required this.id,
      required this.object,
      required this.created,
      required this.model,
      required this.choices,
      this.usage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'InlineResponse2005', 'id');
    BuiltValueNullFieldError.checkNotNull(
        object, r'InlineResponse2005', 'object');
    BuiltValueNullFieldError.checkNotNull(
        created, r'InlineResponse2005', 'created');
    BuiltValueNullFieldError.checkNotNull(
        model, r'InlineResponse2005', 'model');
    BuiltValueNullFieldError.checkNotNull(
        choices, r'InlineResponse2005', 'choices');
  }

  @override
  InlineResponse2005 rebuild(
          void Function(InlineResponse2005Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2005Builder toBuilder() =>
      new InlineResponse2005Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2005 &&
        id == other.id &&
        object == other.object &&
        created == other.created &&
        model == other.model &&
        choices == other.choices &&
        usage == other.usage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, object.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, choices.hashCode);
    _$hash = $jc(_$hash, usage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InlineResponse2005')
          ..add('id', id)
          ..add('object', object)
          ..add('created', created)
          ..add('model', model)
          ..add('choices', choices)
          ..add('usage', usage))
        .toString();
  }
}

class InlineResponse2005Builder
    implements Builder<InlineResponse2005, InlineResponse2005Builder> {
  _$InlineResponse2005? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _object;
  String? get object => _$this._object;
  set object(String? object) => _$this._object = object;

  int? _created;
  int? get created => _$this._created;
  set created(int? created) => _$this._created = created;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  ListBuilder<InlineResponse2005Choices>? _choices;
  ListBuilder<InlineResponse2005Choices> get choices =>
      _$this._choices ??= new ListBuilder<InlineResponse2005Choices>();
  set choices(ListBuilder<InlineResponse2005Choices>? choices) =>
      _$this._choices = choices;

  UsageInfoBuilder? _usage;
  UsageInfoBuilder get usage => _$this._usage ??= new UsageInfoBuilder();
  set usage(UsageInfoBuilder? usage) => _$this._usage = usage;

  InlineResponse2005Builder() {
    InlineResponse2005._defaults(this);
  }

  InlineResponse2005Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _object = $v.object;
      _created = $v.created;
      _model = $v.model;
      _choices = $v.choices.toBuilder();
      _usage = $v.usage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse2005 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineResponse2005;
  }

  @override
  void update(void Function(InlineResponse2005Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineResponse2005 build() => _build();

  _$InlineResponse2005 _build() {
    _$InlineResponse2005 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse2005._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'InlineResponse2005', 'id'),
              object: BuiltValueNullFieldError.checkNotNull(
                  object, r'InlineResponse2005', 'object'),
              created: BuiltValueNullFieldError.checkNotNull(
                  created, r'InlineResponse2005', 'created'),
              model: BuiltValueNullFieldError.checkNotNull(
                  model, r'InlineResponse2005', 'model'),
              choices: choices.build(),
              usage: _usage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'choices';
        choices.build();
        _$failedField = 'usage';
        _usage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InlineResponse2005', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
