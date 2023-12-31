import 'package:flutter_riverpod_template/app/ext/shared_preferences_ext.dart';
import 'package:flutter_riverpod_template/moudles/home/user_info_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStore {
  final SharedPreferences prefs;

  AppStore({required this.prefs});

  UserInfoModel? _userInfo;

  set userInfo(UserInfoModel? value) {
    if (value != null) {
      prefs.setObj("", {});
      _userInfo = value;
    }
  }

  UserInfoModel? get userInfo {
    if (_userInfo != null) {
      return _userInfo;
    }
    final obj = prefs.getObj("");
    if (obj != null) {
      final val = UserInfoModel.fromJson(obj);
      _userInfo = val;
      return _userInfo;
    }
    return null;
  }

  clearUser() {
    prefs.remove("");
  }
}
