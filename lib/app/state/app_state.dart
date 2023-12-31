import 'package:flutter_riverpod_template/moudles/home/user_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState.toLogin() = _ToLogin;

  const factory AppState.logined(UserInfoModel userInfo) = _Logined;
}
