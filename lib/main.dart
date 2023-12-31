import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_template/app/state/app_state_service.dart';
import 'package:flutter_riverpod_template/app/store/app_store.dart';
import 'package:flutter_riverpod_template/app_root.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  // GetIt.instance.registerSingleton<AppStore>();
  // AppStore(prefs: prefs)
  runApp(ProviderScope(
    child: AppRoot(),
    overrides: [
      ///当异步API准备好时，作用域如何允许你覆盖一个形式上的provider。
      ///https://riverpod.dev/zh-hans/docs/concepts/scopes
      appPrefsProvider.overrideWithValue(prefs),
    ],
  ));

  ///以下两行 设置android状态栏为透明的沉浸。
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
