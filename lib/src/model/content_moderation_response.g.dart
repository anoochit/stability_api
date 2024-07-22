// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_moderation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ContentModerationResponseNameEnum
    _$contentModerationResponseNameEnum_contentModeration =
    const ContentModerationResponseNameEnum._('contentModeration');

ContentModerationResponseNameEnum _$contentModerationResponseNameEnumValueOf(
    String name) {
  switch (name) {
    case 'contentModeration':
      return _$contentModerationResponseNameEnum_contentModeration;
    default:
      return _$contentModerationResponseNameEnum_contentModeration;
  }
}

final BuiltSet<ContentModerationResponseNameEnum>
    _$contentModerationResponseNameEnumValues = new BuiltSet<
        ContentModerationResponseNameEnum>(const <ContentModerationResponseNameEnum>[
  _$contentModerationResponseNameEnum_contentModeration,
]);

Serializer<ContentModerationResponseNameEnum>
    _$contentModerationResponseNameEnumSerializer =
    new _$ContentModerationResponseNameEnumSerializer();

class _$ContentModerationResponseNameEnumSerializer
    implements PrimitiveSerializer<ContentModerationResponseNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'contentModeration': 'content_moderation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'content_moderation': 'contentModeration',
  };

  @override
  final Iterable<Type> types = const <Type>[ContentModerationResponseNameEnum];
  @override
  final String wireName = 'ContentModerationResponseNameEnum';

  @override
  Object serialize(
          Serializers serializers, ContentModerationResponseNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ContentModerationResponseNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ContentModerationResponseNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ContentModerationResponse extends ContentModerationResponse {
  @override
  final String id;
  @override
  final ContentModerationResponseNameEnum name;
  @override
  final BuiltList<String> errors;

  factory _$ContentModerationResponse(
          [void Function(ContentModerationResponseBuilder)? updates]) =>
      (new ContentModerationResponseBuilder()..update(updates))._build();

  _$ContentModerationResponse._(
      {required this.id, required this.name, required this.errors})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'ContentModerationResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'ContentModerationResponse', 'name');
    BuiltValueNullFieldError.checkNotNull(
        errors, r'ContentModerationResponse', 'errors');
  }

  @override
  ContentModerationResponse rebuild(
          void Function(ContentModerationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentModerationResponseBuilder toBuilder() =>
      new ContentModerationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentModerationResponse &&
        id == other.id &&
        name == other.name &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContentModerationResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('errors', errors))
        .toString();
  }
}

class ContentModerationResponseBuilder
    implements
        Builder<ContentModerationResponse, ContentModerationResponseBuilder> {
  _$ContentModerationResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ContentModerationResponseNameEnum? _name;
  ContentModerationResponseNameEnum? get name => _$this._name;
  set name(ContentModerationResponseNameEnum? name) => _$this._name = name;

  ListBuilder<String>? _errors;
  ListBuilder<String> get errors =>
      _$this._errors ??= new ListBuilder<String>();
  set errors(ListBuilder<String>? errors) => _$this._errors = errors;

  ContentModerationResponseBuilder() {
    ContentModerationResponse._defaults(this);
  }

  ContentModerationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _errors = $v.errors.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentModerationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContentModerationResponse;
  }

  @override
  void update(void Function(ContentModerationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContentModerationResponse build() => _build();

  _$ContentModerationResponse _build() {
    _$ContentModerationResponse _$result;
    try {
      _$result = _$v ??
          new _$ContentModerationResponse._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'ContentModerationResponse', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'ContentModerationResponse', 'name'),
              errors: errors.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ContentModerationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
