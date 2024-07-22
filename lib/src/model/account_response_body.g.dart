// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response_body.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountResponseBody extends AccountResponseBody {
  @override
  final String email;
  @override
  final String id;
  @override
  final BuiltList<OrganizationMembership> organizations;
  @override
  final String? profilePicture;

  factory _$AccountResponseBody(
          [void Function(AccountResponseBodyBuilder)? updates]) =>
      (new AccountResponseBodyBuilder()..update(updates))._build();

  _$AccountResponseBody._(
      {required this.email,
      required this.id,
      required this.organizations,
      this.profilePicture})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'AccountResponseBody', 'email');
    BuiltValueNullFieldError.checkNotNull(id, r'AccountResponseBody', 'id');
    BuiltValueNullFieldError.checkNotNull(
        organizations, r'AccountResponseBody', 'organizations');
  }

  @override
  AccountResponseBody rebuild(
          void Function(AccountResponseBodyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountResponseBodyBuilder toBuilder() =>
      new AccountResponseBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountResponseBody &&
        email == other.email &&
        id == other.id &&
        organizations == other.organizations &&
        profilePicture == other.profilePicture;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, organizations.hashCode);
    _$hash = $jc(_$hash, profilePicture.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountResponseBody')
          ..add('email', email)
          ..add('id', id)
          ..add('organizations', organizations)
          ..add('profilePicture', profilePicture))
        .toString();
  }
}

class AccountResponseBodyBuilder
    implements Builder<AccountResponseBody, AccountResponseBodyBuilder> {
  _$AccountResponseBody? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<OrganizationMembership>? _organizations;
  ListBuilder<OrganizationMembership> get organizations =>
      _$this._organizations ??= new ListBuilder<OrganizationMembership>();
  set organizations(ListBuilder<OrganizationMembership>? organizations) =>
      _$this._organizations = organizations;

  String? _profilePicture;
  String? get profilePicture => _$this._profilePicture;
  set profilePicture(String? profilePicture) =>
      _$this._profilePicture = profilePicture;

  AccountResponseBodyBuilder() {
    AccountResponseBody._defaults(this);
  }

  AccountResponseBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _id = $v.id;
      _organizations = $v.organizations.toBuilder();
      _profilePicture = $v.profilePicture;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountResponseBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountResponseBody;
  }

  @override
  void update(void Function(AccountResponseBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountResponseBody build() => _build();

  _$AccountResponseBody _build() {
    _$AccountResponseBody _$result;
    try {
      _$result = _$v ??
          new _$AccountResponseBody._(
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'AccountResponseBody', 'email'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'AccountResponseBody', 'id'),
              organizations: organizations.build(),
              profilePicture: profilePicture);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizations';
        organizations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountResponseBody', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
