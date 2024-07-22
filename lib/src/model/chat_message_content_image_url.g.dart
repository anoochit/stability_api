// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_content_image_url.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatMessageContentImageUrl extends ChatMessageContentImageUrl {
  @override
  final String? url;

  factory _$ChatMessageContentImageUrl(
          [void Function(ChatMessageContentImageUrlBuilder)? updates]) =>
      (new ChatMessageContentImageUrlBuilder()..update(updates))._build();

  _$ChatMessageContentImageUrl._({this.url}) : super._();

  @override
  ChatMessageContentImageUrl rebuild(
          void Function(ChatMessageContentImageUrlBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatMessageContentImageUrlBuilder toBuilder() =>
      new ChatMessageContentImageUrlBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatMessageContentImageUrl && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatMessageContentImageUrl')
          ..add('url', url))
        .toString();
  }
}

class ChatMessageContentImageUrlBuilder
    implements
        Builder<ChatMessageContentImageUrl, ChatMessageContentImageUrlBuilder> {
  _$ChatMessageContentImageUrl? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  ChatMessageContentImageUrlBuilder() {
    ChatMessageContentImageUrl._defaults(this);
  }

  ChatMessageContentImageUrlBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatMessageContentImageUrl other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatMessageContentImageUrl;
  }

  @override
  void update(void Function(ChatMessageContentImageUrlBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatMessageContentImageUrl build() => _build();

  _$ChatMessageContentImageUrl _build() {
    final _$result = _$v ?? new _$ChatMessageContentImageUrl._(url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
