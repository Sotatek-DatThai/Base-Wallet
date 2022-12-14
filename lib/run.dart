import 'dart:developer';

import 'package:base_wallet/app.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void run() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
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
{ Update Provider
  "provider": "${provider.name ?? provider.runtimeType}",
  "previousValue": "$previousValue"
  "newValue": "$newValue"
}''');
  }

  @override
  void didAddProvider(
    ProviderBase provider,
    Object? value,
    ProviderContainer container,
  ) {
    log('''
{ Add Provider
  "provider": "${provider.name ?? provider.runtimeType}",
  "value": "$value"
}''');
    super.didAddProvider(provider, value, container);
  }

  @override
  void didDisposeProvider(
    ProviderBase provider,
    ProviderContainer containers,
  ) {
    log('''
{ Dispose Provider
  "provider": "${provider.name ?? provider.runtimeType}",
}''');
    super.didDisposeProvider(provider, containers);
  }
}
