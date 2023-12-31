// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) {
  return _UserInfoModel.fromJson(json);
}

/// @nodoc
mixin _$UserInfoModel {
  String? get authToken => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  bool? get register => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoModelCopyWith<UserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoModelCopyWith<$Res> {
  factory $UserInfoModelCopyWith(
          UserInfoModel value, $Res Function(UserInfoModel) then) =
      _$UserInfoModelCopyWithImpl<$Res, UserInfoModel>;
  @useResult
  $Res call({String? authToken, String? userId, String? token, bool? register});
}

/// @nodoc
class _$UserInfoModelCopyWithImpl<$Res, $Val extends UserInfoModel>
    implements $UserInfoModelCopyWith<$Res> {
  _$UserInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = freezed,
    Object? userId = freezed,
    Object? token = freezed,
    Object? register = freezed,
  }) {
    return _then(_value.copyWith(
      authToken: freezed == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      register: freezed == register
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoModelImplCopyWith<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  factory _$$UserInfoModelImplCopyWith(
          _$UserInfoModelImpl value, $Res Function(_$UserInfoModelImpl) then) =
      __$$UserInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? authToken, String? userId, String? token, bool? register});
}

/// @nodoc
class __$$UserInfoModelImplCopyWithImpl<$Res>
    extends _$UserInfoModelCopyWithImpl<$Res, _$UserInfoModelImpl>
    implements _$$UserInfoModelImplCopyWith<$Res> {
  __$$UserInfoModelImplCopyWithImpl(
      _$UserInfoModelImpl _value, $Res Function(_$UserInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = freezed,
    Object? userId = freezed,
    Object? token = freezed,
    Object? register = freezed,
  }) {
    return _then(_$UserInfoModelImpl(
      authToken: freezed == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      register: freezed == register
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoModelImpl implements _UserInfoModel {
  _$UserInfoModelImpl({this.authToken, this.userId, this.token, this.register});

  factory _$UserInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoModelImplFromJson(json);

  @override
  final String? authToken;
  @override
  final String? userId;
  @override
  final String? token;
  @override
  final bool? register;

  @override
  String toString() {
    return 'UserInfoModel(authToken: $authToken, userId: $userId, token: $token, register: $register)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoModelImpl &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.register, register) ||
                other.register == register));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, authToken, userId, token, register);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoModelImplCopyWith<_$UserInfoModelImpl> get copyWith =>
      __$$UserInfoModelImplCopyWithImpl<_$UserInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoModelImplToJson(
      this,
    );
  }
}

abstract class _UserInfoModel implements UserInfoModel {
  factory _UserInfoModel(
      {final String? authToken,
      final String? userId,
      final String? token,
      final bool? register}) = _$UserInfoModelImpl;

  factory _UserInfoModel.fromJson(Map<String, dynamic> json) =
      _$UserInfoModelImpl.fromJson;

  @override
  String? get authToken;
  @override
  String? get userId;
  @override
  String? get token;
  @override
  bool? get register;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoModelImplCopyWith<_$UserInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
