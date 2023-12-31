import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_state_service.g.dart';

@Riverpod(keepAlive: true)
SharedPreferences appPrefs(AppPrefsRef ref) {
  throw UnimplementedError();
}
