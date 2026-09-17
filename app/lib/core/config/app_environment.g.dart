// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_environment.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Resolved once from `--dart-define=APP_ENV=<dev|prod>`.
///
/// Undefined means [AppEnvironment.dev], so a plain `flutter run` can never
/// point at production. An unknown value throws at startup instead of
/// silently falling back.

@ProviderFor(appEnvironment)
final appEnvironmentProvider = AppEnvironmentProvider._();

/// Resolved once from `--dart-define=APP_ENV=<dev|prod>`.
///
/// Undefined means [AppEnvironment.dev], so a plain `flutter run` can never
/// point at production. An unknown value throws at startup instead of
/// silently falling back.

final class AppEnvironmentProvider
    extends $FunctionalProvider<AppEnvironment, AppEnvironment, AppEnvironment>
    with $Provider<AppEnvironment> {
  /// Resolved once from `--dart-define=APP_ENV=<dev|prod>`.
  ///
  /// Undefined means [AppEnvironment.dev], so a plain `flutter run` can never
  /// point at production. An unknown value throws at startup instead of
  /// silently falling back.
  AppEnvironmentProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appEnvironmentProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appEnvironmentHash();

  @$internal
  @override
  $ProviderElement<AppEnvironment> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppEnvironment create(Ref ref) {
    return appEnvironment(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppEnvironment value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppEnvironment>(value),
    );
  }
}

String _$appEnvironmentHash() => r'7005633d25e93b343c599e152a8e6193952bee93';
