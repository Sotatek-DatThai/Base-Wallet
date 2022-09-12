import 'package:base_wallet/presentation/home/layout/home_screen.dart';
import 'package:flutter/widgets.dart';

class R {
  static const String home = '/home';
}

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    R.home: (_) => const HomeScreen(),
  };
}
