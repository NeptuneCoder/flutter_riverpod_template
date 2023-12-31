import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_template/app/theme/app_theme.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_riverpod_template/app/ext/context_ext.dart';
import 'package:flutter_riverpod_template/app_router.dart';
import 'package:flutter_riverpod_template/generated/l10n.dart';

class AppRoot extends ConsumerStatefulWidget {
  const AppRoot({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppRootState();
}

class _AppRootState extends ConsumerState<AppRoot> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: const TextScaler.linear(1.0)),
        child: StHideKeyboard(
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const AppLocalizationDelegate().supportedLocales,
            localeResolutionCallback: (deviceLocale, supportedLocales) {
              for (var locale in supportedLocales) {
                if (locale.languageCode == deviceLocale!.languageCode) {
                  return deviceLocale;
                }
              }
              return supportedLocales.first;
            },
            routerDelegate: ref.watch(appRouterProvider).routerDelegate,
            routeInformationParser:
                ref.watch(appRouterProvider).routeInformationParser,
            routeInformationProvider:
                ref.watch(appRouterProvider).routeInformationProvider,
            themeMode: ThemeMode.light,
            theme: AppTheme.light,
            onGenerateTitle: (context) => context.loc.appName,
            builder: FlutterSmartDialog.init(),
          ),
        ));
  }
}

class StHideKeyboard extends StatelessWidget {
  final Widget? child;

  const StHideKeyboard({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: child,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          // 取消聚焦
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
    );
  }
}
