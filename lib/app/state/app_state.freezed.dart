// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLogin,
    required TResult Function(UserInfoModel userInfo) logined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toLogin,
    TResult? Function(UserInfoModel userInfo)? logined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLogin,
    TResult Function(UserInfoModel userInfo)? logined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToLogin value) toLogin,
    required TResult Function(_Logined value) logined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToLogin value)? toLogin,
    TResult? Function(_Logined value)? logined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToLogin value)? toLogin,
    TResult Function(_Logined value)? logined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToLoginImplCopyWith<$Res> {
  factory _$$ToLoginImplCopyWith(
          _$ToLoginImpl value, $Res Function(_$ToLoginImpl) then) =
      __$$ToLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToLoginImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ToLoginImpl>
    implements _$$ToLoginImplCopyWith<$Res> {
  __$$ToLoginImplCopyWithImpl(
      _$ToLoginImpl _value, $Res Function(_$ToLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToLoginImpl implements _ToLogin {
  const _$ToLoginImpl();

  @override
  String toString() {
    return 'AppState.toLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLogin,
    required TResult Function(UserInfoModel userInfo) logined,
  }) {
    return toLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toLogin,
    TResult? Function(UserInfoModel userInfo)? logined,
  }) {
    return toLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLogin,
    TResult Function(UserInfoModel userInfo)? logined,
    required TResult orElse(),
  }) {
    if (toLogin != null) {
      return toLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToLogin value) toLogin,
    required TResult Function(_Logined value) logined,
  }) {
    return toLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToLogin value)? toLogin,
    TResult? Function(_Logined value)? logined,
  }) {
    return toLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToLogin value)? toLogin,
    TResult Function(_Logined value)? logined,
    required TResult orElse(),
  }) {
    if (toLogin != null) {
      return toLogin(this);
    }
    return orElse();
  }
}

abstract class _ToLogin implements AppState {
  const factory _ToLogin() = _$ToLoginImpl;
}

/// @nodoc
abstract class _$$LoginedImplCopyWith<$Res> {
  factory _$$LoginedImplCopyWith(
          _$LoginedImpl value, $Res Function(_$LoginedImpl) then) =
      __$$LoginedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserInfoModel userInfo});

  $UserInfoModelCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$LoginedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$LoginedImpl>
    implements _$$LoginedImplCopyWith<$Res> {
  __$$LoginedImplCopyWithImpl(
      _$LoginedImpl _value, $Res Function(_$LoginedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
  }) {
    return _then(_$LoginedImpl(
      null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoModelCopyWith<$Res> get userInfo {
    return $UserInfoModelCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }
}

/// @nodoc

class _$LoginedImpl implements _Logined {
  const _$LoginedImpl(this.userInfo);

  @override
  final UserInfoModel userInfo;

  @override
  String toString() {
    return 'AppState.logined(userInfo: $userInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginedImpl &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginedImplCopyWith<_$LoginedImpl> get copyWith =>
      __$$LoginedImplCopyWithImpl<_$LoginedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLogin,
    required TResult Function(UserInfoModel userInfo) logined,
  }) {
    return logined(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toLogin,
    TResult? Function(UserInfoModel userInfo)? logined,
  }) {
    return logined?.call(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLogin,
    TResult Function(UserInfoModel userInfo)? logined,
    required TResult orElse(),
  }) {
    if (logined != null) {
      return logined(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToLogin value) toLogin,
    required TResult Function(_Logined value) logined,
  }) {
    return logined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToLogin value)? toLogin,
    TResult? Function(_Logined value)? logined,
  }) {
    return logined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToLogin value)? toLogin,
    TResult Function(_Logined value)? logined,
    required TResult orElse(),
  }) {
    if (logined != null) {
      return logined(this);
    }
    return orElse();
  }
}

abstract class _Logined implements AppState {
  const factory _Logined(final UserInfoModel userInfo) = _$LoginedImpl;

  UserInfoModel get userInfo;
  @JsonKey(ignore: true)
  _$$LoginedImplCopyWith<_$LoginedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
