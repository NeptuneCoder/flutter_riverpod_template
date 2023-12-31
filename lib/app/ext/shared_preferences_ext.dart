import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

extension SharedPreferencesExt on SharedPreferences {
  Map<String, dynamic>? getObj(String key) {
    final jsonStr = getString(key);
    if (jsonStr != null) {
      return jsonDecode(jsonStr);
    }
    return null;
  }

  Future<bool> setObj(String key, Map<String, dynamic> value) {
    return setString(key, jsonEncode(value));
  }
}
