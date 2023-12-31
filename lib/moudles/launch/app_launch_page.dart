import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_template/app/state/app_state_service.dart';
import 'package:flutter_riverpod_template/moudles/home/root_tab_screen.dart';
import 'package:flutter_riverpod_template/moudles/login/login_screen.dart';

class AppLaunchPage extends ConsumerStatefulWidget {
  const AppLaunchPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppLaunchPageState();
}

class _AppLaunchPageState extends ConsumerState<AppLaunchPage> {
  @override
  Widget build(BuildContext context) {
    final appState = ref.watch(appStateServiceProvider);
    return appState.maybeWhen(
      orElse: () => const LoginScreen(),
      logined: (_) => RootTabScreen(key: Keys.tabKey),
    );
  }

  @override
  void initState() {
    print("2. 当前的时间为--${DateTime.now().millisecondsSinceEpoch}");
    _initIMClient();
    SystemChannels.lifecycle.setMessageHandler((message) async {
      if (message == "AppLifecycleState.inactive") {
        debugPrint("goto background");
        updateAppBadge();
      }
      return null;
    });
    super.initState();
  }

  Future<void> _initIMClient() async {

  }

  void updateAppBadge() {
    //只有iOS平台支持，android平台不支持。如果有其他支持android平台badge，请提issue给我们添加。
    if (defaultTargetPlatform == TargetPlatform.iOS) {

    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didUpdateWidget(AppLaunchPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
}
