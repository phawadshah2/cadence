import 'package:cadence/core/config/app_environment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CadenceApp extends ConsumerWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final environment = ref.watch(appEnvironmentProvider);
    return MaterialApp(
      title: 'Cadence',
      debugShowCheckedModeBanner: false,
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
      home: const Scaffold(body: Center(child: Text('Cadence'))),
    );
  }
}
