import 'dart:developer';

import 'package:base_wallet/app.dart';
import 'package:base_wallet/di/injector.dart';
import 'package:base_wallet/flavors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void run() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    configureDependencies(F.appFlavor.name.toLowerCase()),
  ]);

  runApp(ProviderScope(
    observers: [Logger()],
    child: const App(),
  ));
}

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }
}
