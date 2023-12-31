import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_demo/moudles/error/error_screen.dart';

class RouterUri {
  static const String launch = '/';
  static const String logout = '/logout';
  static const String login = '/login';
}

final GlobalKey<NavigatorState> appNavKey = GlobalKey();
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RouterUri.launch,
    navigatorKey: appNavKey,
    errorPageBuilder: (context, state) => NoTransitionPage<void>(
      key: state.pageKey,
      child: const ErrorScreen(),
    ),
    routes: [],
  );
});
