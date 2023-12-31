import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_model.freezed.dart';

part 'user_info_model.g.dart';

@freezed
class UserInfoModel with _$UserInfoModel {
  factory UserInfoModel({
    String? authToken,
    String? userId,
    String? token,
    bool? register,
  }) = _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);
}
