import 'package:flutter_riverpod_template/app/state/app_state.dart';
import 'package:flutter_riverpod_template/app/store/app_store.dart';
import 'package:flutter_riverpod_template/moudles/home/user_info_model.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_state_service.g.dart';

@Riverpod(keepAlive: true)
SharedPreferences appPrefs(AppPrefsRef ref) {
  throw UnimplementedError();
}

@Riverpod(keepAlive: true)
class AppStateService extends _$AppStateService {
  @override
  AppState build() {
    final user = GetIt.I.get<AppStore>().userInfo;
    if (user != null) {
      if (user.token != null && user.token!.isNotEmpty) {}
      // AppServer.authToken = "${user.authToken}";
      print("app init authToken === ${user.authToken}");
      return AppState.logined(user);
    }
    return const AppState.toLogin();
  }

  UserInfoModel? getUserInfo() {
    final user = GetIt.I.get<AppStore>().userInfo;
    return user;
  }

  updateUser(UserInfoModel user) {
    GetIt.I.get<AppStore>().userInfo = user;
    print("user.token === ${user.token}");
    // Imclient.connect(Config.IM_Host, user.userId ?? '', user.token ?? '');
    state = AppState.logined(user);
  }

  logout() {
    // Imclient.disconnect();
    // GetIt.I.get<AppStore>().clearUser();
    state = const AppState.toLogin();
  }
}

@riverpod
UserInfoModel? currentUserInfo(CurrentUserInfoRef ref) {
  return ref.watch(appStateServiceProvider).maybeWhen(
        orElse: () => null,
        logined: (user) => user,
      );
}
