// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engine.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EngineTypeEnum _$engineTypeEnum_AUDIO = const EngineTypeEnum._('AUDIO');
const EngineTypeEnum _$engineTypeEnum_CLASSIFICATION =
    const EngineTypeEnum._('CLASSIFICATION');
const EngineTypeEnum _$engineTypeEnum_PICTURE =
    const EngineTypeEnum._('PICTURE');
const EngineTypeEnum _$engineTypeEnum_STORAGE =
    const EngineTypeEnum._('STORAGE');
const EngineTypeEnum _$engineTypeEnum_TEXT = const EngineTypeEnum._('TEXT');
const EngineTypeEnum _$engineTypeEnum_VIDEO = const EngineTypeEnum._('VIDEO');

EngineTypeEnum _$engineTypeEnumValueOf(String name) {
  switch (name) {
    case 'AUDIO':
      return _$engineTypeEnum_AUDIO;
    case 'CLASSIFICATION':
      return _$engineTypeEnum_CLASSIFICATION;
    case 'PICTURE':
      return _$engineTypeEnum_PICTURE;
    case 'STORAGE':
      return _$engineTypeEnum_STORAGE;
    case 'TEXT':
      return _$engineTypeEnum_TEXT;
    case 'VIDEO':
      return _$engineTypeEnum_VIDEO;
    default:
      return _$engineTypeEnum_VIDEO;
  }
}

final BuiltSet<EngineTypeEnum> _$engineTypeEnumValues =
    new BuiltSet<EngineTypeEnum>(const <EngineTypeEnum>[
  _$engineTypeEnum_AUDIO,
  _$engineTypeEnum_CLASSIFICATION,
  _$engineTypeEnum_PICTURE,
  _$engineTypeEnum_STORAGE,
  _$engineTypeEnum_TEXT,
  _$engineTypeEnum_VIDEO,
]);

Serializer<EngineTypeEnum> _$engineTypeEnumSerializer =
    new _$EngineTypeEnumSerializer();

class _$EngineTypeEnumSerializer
    implements PrimitiveSerializer<EngineTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'AUDIO': 'AUDIO',
    'CLASSIFICATION': 'CLASSIFICATION',
    'PICTURE': 'PICTURE',
    'STORAGE': 'STORAGE',
    'TEXT': 'TEXT',
    'VIDEO': 'VIDEO',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'AUDIO': 'AUDIO',
    'CLASSIFICATION': 'CLASSIFICATION',
    'PICTURE': 'PICTURE',
    'STORAGE': 'STORAGE',
    'TEXT': 'TEXT',
    'VIDEO': 'VIDEO',
  };

  @override
  final Iterable<Type> types = const <Type>[EngineTypeEnum];
  @override
  final String wireName = 'EngineTypeEnum';

  @override
  Object serialize(Serializers serializers, EngineTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EngineTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EngineTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Engine extends Engine {
  @override
  final String description;
  @override
  final String id;
  @override
  final String name;
  @override
  final EngineTypeEnum type;

  factory _$Engine([void Function(EngineBuilder)? updates]) =>
      (new EngineBuilder()..update(updates))._build();

  _$Engine._(
      {required this.description,
      required this.id,
      required this.name,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        description, r'Engine', 'description');
    BuiltValueNullFieldError.checkNotNull(id, r'Engine', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Engine', 'name');
    BuiltValueNullFieldError.checkNotNull(type, r'Engine', 'type');
  }

  @override
  Engine rebuild(void Function(EngineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EngineBuilder toBuilder() => new EngineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Engine &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Engine')
          ..add('description', description)
          ..add('id', id)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class EngineBuilder implements Builder<Engine, EngineBuilder> {
  _$Engine? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  EngineTypeEnum? _type;
  EngineTypeEnum? get type => _$this._type;
  set type(EngineTypeEnum? type) => _$this._type = type;

  EngineBuilder() {
    Engine._defaults(this);
  }

  EngineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Engine other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Engine;
  }

  @override
  void update(void Function(EngineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Engine build() => _build();

  _$Engine _build() {
    final _$result = _$v ??
        new _$Engine._(
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'Engine', 'description'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'Engine', 'id'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Engine', 'name'),
            type:
                BuiltValueNullFieldError.checkNotNull(type, r'Engine', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
