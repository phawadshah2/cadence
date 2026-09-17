import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_environment.g.dart';

enum AppEnvironment { dev, prod }

/// Resolved once from `--dart-define=APP_ENV=<dev|prod>`.
///
/// Undefined means [AppEnvironment.dev], so a plain `flutter run` can never
/// point at production. An unknown value throws at startup instead of
/// silently falling back.
@Riverpod(keepAlive: true)
AppEnvironment appEnvironment(Ref ref) {
  const name = String.fromEnvironment('APP_ENV', defaultValue: 'dev');
  return AppEnvironment.values.byName(name);
}
