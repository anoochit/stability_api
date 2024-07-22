// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_response202.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineResponse202StatusEnum _$inlineResponse202StatusEnum_inProgress =
    const InlineResponse202StatusEnum._('inProgress');

InlineResponse202StatusEnum _$inlineResponse202StatusEnumValueOf(String name) {
  switch (name) {
    case 'inProgress':
      return _$inlineResponse202StatusEnum_inProgress;
    default:
      return _$inlineResponse202StatusEnum_inProgress;
  }
}

final BuiltSet<InlineResponse202StatusEnum>
    _$inlineResponse202StatusEnumValues = new BuiltSet<
        InlineResponse202StatusEnum>(const <InlineResponse202StatusEnum>[
  _$inlineResponse202StatusEnum_inProgress,
]);

Serializer<InlineResponse202StatusEnum>
    _$inlineResponse202StatusEnumSerializer =
    new _$InlineResponse202StatusEnumSerializer();

class _$InlineResponse202StatusEnumSerializer
    implements PrimitiveSerializer<InlineResponse202StatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'inProgress': 'in-progress',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'in-progress': 'inProgress',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineResponse202StatusEnum];
  @override
  final String wireName = 'InlineResponse202StatusEnum';

  @override
  Object serialize(Serializers serializers, InlineResponse202StatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineResponse202StatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineResponse202StatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InlineResponse202 extends InlineResponse202 {
  @override
  final String id;
  @override
  final InlineResponse202StatusEnum status;

  factory _$InlineResponse202(
          [void Function(InlineResponse202Builder)? updates]) =>
      (new InlineResponse202Builder()..update(updates))._build();

  _$InlineResponse202._({required this.id, required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'InlineResponse202', 'id');
    BuiltValueNullFieldError.checkNotNull(
        status, r'InlineResponse202', 'status');
  }

  @override
  InlineResponse202 rebuild(void Function(InlineResponse202Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse202Builder toBuilder() =>
      new InlineResponse202Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse202 &&
        id == other.id &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InlineResponse202')
          ..add('id', id)
          ..add('status', status))
        .toString();
  }
}

class InlineResponse202Builder
    implements Builder<InlineResponse202, InlineResponse202Builder> {
  _$InlineResponse202? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  InlineResponse202StatusEnum? _status;
  InlineResponse202StatusEnum? get status => _$this._status;
  set status(InlineResponse202StatusEnum? status) => _$this._status = status;

  InlineResponse202Builder() {
    InlineResponse202._defaults(this);
  }

  InlineResponse202Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse202 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineResponse202;
  }

  @override
  void update(void Function(InlineResponse202Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineResponse202 build() => _build();

  _$InlineResponse202 _build() {
    final _$result = _$v ??
        new _$InlineResponse202._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'InlineResponse202', 'id'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'InlineResponse202', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
