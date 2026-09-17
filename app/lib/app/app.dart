import 'package:cadence/app/router/app_router.dart';
import 'package:cadence/core/config/app_environment.dart';
import 'package:cadence/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CadenceApp extends ConsumerWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final environment = ref.watch(appEnvironmentProvider);
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: 'Cadence',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: router,
      builder: (context, child) {
        return switch (environment) {
          AppEnvironment.dev => Banner(
            message: 'DEV',
            location: BannerLocation.topEnd,
            child: child,
          ),
          AppEnvironment.prod => child!,
        };
      },
    );
  }
}
