import 'package:base_wallet/presentation/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch<String>(homeProvider);
    return Scaffold(
      body: Center(
        child: Text(value),
      ),
    );
  }
}
