// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_detail_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserDetailInfoTearOff {
  const _$UserDetailInfoTearOff();

  _UserDetailInfo call(
      {required String userName,
      required int total,
      required List<Account> accounts}) {
    return _UserDetailInfo(
      userName: userName,
      total: total,
      accounts: accounts,
    );
  }
}

/// @nodoc
const $UserDetailInfo = _$UserDetailInfoTearOff();

/// @nodoc
mixin _$UserDetailInfo {
  String get userName => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<Account> get accounts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailInfoCopyWith<UserDetailInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailInfoCopyWith<$Res> {
  factory $UserDetailInfoCopyWith(
          UserDetailInfo value, $Res Function(UserDetailInfo) then) =
      _$UserDetailInfoCopyWithImpl<$Res>;
  $Res call({String userName, int total, List<Account> accounts});
}

/// @nodoc
class _$UserDetailInfoCopyWithImpl<$Res>
    implements $UserDetailInfoCopyWith<$Res> {
  _$UserDetailInfoCopyWithImpl(this._value, this._then);

  final UserDetailInfo _value;
  // ignore: unused_field
  final $Res Function(UserDetailInfo) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? total = freezed,
    Object? accounts = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc
abstract class _$UserDetailInfoCopyWith<$Res>
    implements $UserDetailInfoCopyWith<$Res> {
  factory _$UserDetailInfoCopyWith(
          _UserDetailInfo value, $Res Function(_UserDetailInfo) then) =
      __$UserDetailInfoCopyWithImpl<$Res>;
  @override
  $Res call({String userName, int total, List<Account> accounts});
}

/// @nodoc
class __$UserDetailInfoCopyWithImpl<$Res>
    extends _$UserDetailInfoCopyWithImpl<$Res>
    implements _$UserDetailInfoCopyWith<$Res> {
  __$UserDetailInfoCopyWithImpl(
      _UserDetailInfo _value, $Res Function(_UserDetailInfo) _then)
      : super(_value, (v) => _then(v as _UserDetailInfo));

  @override
  _UserDetailInfo get _value => super._value as _UserDetailInfo;

  @override
  $Res call({
    Object? userName = freezed,
    Object? total = freezed,
    Object? accounts = freezed,
  }) {
    return _then(_UserDetailInfo(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_UserDetailInfo implements _UserDetailInfo {
  const _$_UserDetailInfo(
      {required this.userName, required this.total, required this.accounts});

  @override
  final String userName;
  @override
  final int total;
  @override
  final List<Account> accounts;

  @override
  String toString() {
    return 'UserDetailInfo(userName: $userName, total: $total, accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetailInfo &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.accounts, accounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(accounts));

  @JsonKey(ignore: true)
  @override
  _$UserDetailInfoCopyWith<_UserDetailInfo> get copyWith =>
      __$UserDetailInfoCopyWithImpl<_UserDetailInfo>(this, _$identity);
}

abstract class _UserDetailInfo implements UserDetailInfo {
  const factory _UserDetailInfo(
      {required String userName,
      required int total,
      required List<Account> accounts}) = _$_UserDetailInfo;

  @override
  String get userName;
  @override
  int get total;
  @override
  List<Account> get accounts;
  @override
  @JsonKey(ignore: true)
  _$UserDetailInfoCopyWith<_UserDetailInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
