import 'package:flutter_riverpod_template/app/ext/shared_preferences_ext.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStore {
  final SharedPreferences prefs;

  AppStore({required this.prefs});

  String? _userInfo;

  set userInfo(String? value) {
    if (value != null) {
      prefs.setObj("", {});
      _userInfo = value;
    }
  }

  String? get userInfo {
    if (_userInfo != null) {
      return _userInfo;
    }
    final obj = prefs.getObj("");
    if (obj != null) {
      // final val = UserInfoModel.fromJson(obj);
      // _userInfo = val;
      return "";
    }
    return null;
  }

  clearUser() {
    prefs.remove("");
  }
}
