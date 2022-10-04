import 'package:base_wallet/routers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'flavors.dart';

final darkModePod = StateProvider((ref) => false);

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModePod);
    return MaterialApp.router(
      title: F.title,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1c2834),
          brightness: darkMode ? Brightness.dark : Brightness.light,
        ),
        useMaterial3: true,
      ),
    );
  }
}
