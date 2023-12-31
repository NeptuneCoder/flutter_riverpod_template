// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoModelImpl _$$UserInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoModelImpl(
      authToken: json['authToken'] as String?,
      userId: json['userId'] as String?,
      token: json['token'] as String?,
      register: json['register'] as bool?,
    );

Map<String, dynamic> _$$UserInfoModelImplToJson(_$UserInfoModelImpl instance) =>
    <String, dynamic>{
      'authToken': instance.authToken,
      'userId': instance.userId,
      'token': instance.token,
      'register': instance.register,
    };
