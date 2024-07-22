// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_membership.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationMembership extends OrganizationMembership {
  @override
  final String id;
  @override
  final bool isDefault;
  @override
  final String name;
  @override
  final String role;

  factory _$OrganizationMembership(
          [void Function(OrganizationMembershipBuilder)? updates]) =>
      (new OrganizationMembershipBuilder()..update(updates))._build();

  _$OrganizationMembership._(
      {required this.id,
      required this.isDefault,
      required this.name,
      required this.role})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'OrganizationMembership', 'id');
    BuiltValueNullFieldError.checkNotNull(
        isDefault, r'OrganizationMembership', 'isDefault');
    BuiltValueNullFieldError.checkNotNull(
        name, r'OrganizationMembership', 'name');
    BuiltValueNullFieldError.checkNotNull(
        role, r'OrganizationMembership', 'role');
  }

  @override
  OrganizationMembership rebuild(
          void Function(OrganizationMembershipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationMembershipBuilder toBuilder() =>
      new OrganizationMembershipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationMembership &&
        id == other.id &&
        isDefault == other.isDefault &&
        name == other.name &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrganizationMembership')
          ..add('id', id)
          ..add('isDefault', isDefault)
          ..add('name', name)
          ..add('role', role))
        .toString();
  }
}

class OrganizationMembershipBuilder
    implements Builder<OrganizationMembership, OrganizationMembershipBuilder> {
  _$OrganizationMembership? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  OrganizationMembershipBuilder() {
    OrganizationMembership._defaults(this);
  }

  OrganizationMembershipBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _isDefault = $v.isDefault;
      _name = $v.name;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationMembership other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationMembership;
  }

  @override
  void update(void Function(OrganizationMembershipBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationMembership build() => _build();

  _$OrganizationMembership _build() {
    final _$result = _$v ??
        new _$OrganizationMembership._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'OrganizationMembership', 'id'),
            isDefault: BuiltValueNullFieldError.checkNotNull(
                isDefault, r'OrganizationMembership', 'isDefault'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'OrganizationMembership', 'name'),
            role: BuiltValueNullFieldError.checkNotNull(
                role, r'OrganizationMembership', 'role'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
