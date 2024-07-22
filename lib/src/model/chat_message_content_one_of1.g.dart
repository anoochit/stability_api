// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_content_one_of1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChatMessageContentOneOf1TypeEnum
    _$chatMessageContentOneOf1TypeEnum_imageUrl =
    const ChatMessageContentOneOf1TypeEnum._('imageUrl');

ChatMessageContentOneOf1TypeEnum _$chatMessageContentOneOf1TypeEnumValueOf(
    String name) {
  switch (name) {
    case 'imageUrl':
      return _$chatMessageContentOneOf1TypeEnum_imageUrl;
    default:
      return _$chatMessageContentOneOf1TypeEnum_imageUrl;
  }
}

final BuiltSet<ChatMessageContentOneOf1TypeEnum>
    _$chatMessageContentOneOf1TypeEnumValues = new BuiltSet<
        ChatMessageContentOneOf1TypeEnum>(const <ChatMessageContentOneOf1TypeEnum>[
  _$chatMessageContentOneOf1TypeEnum_imageUrl,
]);

Serializer<ChatMessageContentOneOf1TypeEnum>
    _$chatMessageContentOneOf1TypeEnumSerializer =
    new _$ChatMessageContentOneOf1TypeEnumSerializer();

class _$ChatMessageContentOneOf1TypeEnumSerializer
    implements PrimitiveSerializer<ChatMessageContentOneOf1TypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'imageUrl': 'image_url',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'image_url': 'imageUrl',
  };

  @override
  final Iterable<Type> types = const <Type>[ChatMessageContentOneOf1TypeEnum];
  @override
  final String wireName = 'ChatMessageContentOneOf1TypeEnum';

  @override
  Object serialize(
          Serializers serializers, ChatMessageContentOneOf1TypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChatMessageContentOneOf1TypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChatMessageContentOneOf1TypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChatMessageContentOneOf1 extends ChatMessageContentOneOf1 {
  @override
  final ChatMessageContentOneOf1TypeEnum? type;
  @override
  final ChatMessageContentImageUrl? imageUrl;

  factory _$ChatMessageContentOneOf1(
          [void Function(ChatMessageContentOneOf1Builder)? updates]) =>
      (new ChatMessageContentOneOf1Builder()..update(updates))._build();

  _$ChatMessageContentOneOf1._({this.type, this.imageUrl}) : super._();

  @override
  ChatMessageContentOneOf1 rebuild(
          void Function(ChatMessageContentOneOf1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatMessageContentOneOf1Builder toBuilder() =>
      new ChatMessageContentOneOf1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatMessageContentOneOf1 &&
        type == other.type &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatMessageContentOneOf1')
          ..add('type', type)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class ChatMessageContentOneOf1Builder
    implements
        Builder<ChatMessageContentOneOf1, ChatMessageContentOneOf1Builder> {
  _$ChatMessageContentOneOf1? _$v;

  ChatMessageContentOneOf1TypeEnum? _type;
  ChatMessageContentOneOf1TypeEnum? get type => _$this._type;
  set type(ChatMessageContentOneOf1TypeEnum? type) => _$this._type = type;

  ChatMessageContentImageUrlBuilder? _imageUrl;
  ChatMessageContentImageUrlBuilder get imageUrl =>
      _$this._imageUrl ??= new ChatMessageContentImageUrlBuilder();
  set imageUrl(ChatMessageContentImageUrlBuilder? imageUrl) =>
      _$this._imageUrl = imageUrl;

  ChatMessageContentOneOf1Builder() {
    ChatMessageContentOneOf1._defaults(this);
  }

  ChatMessageContentOneOf1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _imageUrl = $v.imageUrl?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatMessageContentOneOf1 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatMessageContentOneOf1;
  }

  @override
  void update(void Function(ChatMessageContentOneOf1Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatMessageContentOneOf1 build() => _build();

  _$ChatMessageContentOneOf1 _build() {
    _$ChatMessageContentOneOf1 _$result;
    try {
      _$result = _$v ??
          new _$ChatMessageContentOneOf1._(
              type: type, imageUrl: _imageUrl?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imageUrl';
        _imageUrl?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatMessageContentOneOf1', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
