// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appPrefsHash() => r'c63ff20c16c63f68685b0e60f4847fb62fcf552e';

/// See also [appPrefs].
@ProviderFor(appPrefs)
final appPrefsProvider = Provider<SharedPreferences>.internal(
  appPrefs,
  name: r'appPrefsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appPrefsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppPrefsRef = ProviderRef<SharedPreferences>;
String _$currentUserInfoHash() => r'b13758bd3e9e61d70d99752df52f259ef627ea49';

/// See also [currentUserInfo].
@ProviderFor(currentUserInfo)
final currentUserInfoProvider = AutoDisposeProvider<UserInfoModel?>.internal(
  currentUserInfo,
  name: r'currentUserInfoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentUserInfoRef = AutoDisposeProviderRef<UserInfoModel?>;
String _$appStateServiceHash() => r'5544e0bf76115acfaee2caa15867f6c473e11a9b';

/// See also [AppStateService].
@ProviderFor(AppStateService)
final appStateServiceProvider =
    NotifierProvider<AppStateService, AppState>.internal(
  AppStateService.new,
  name: r'appStateServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appStateServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppStateService = Notifier<AppState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
