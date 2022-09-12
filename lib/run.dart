import 'package:base_wallet/app.dart';
import 'package:base_wallet/di/injector.dart';
import 'package:base_wallet/flavors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void run() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    configureDependencies(F.name.toLowerCase()),
  ]);

  runApp(ProviderScope(child: App()));
}
