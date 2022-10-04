import 'package:base_wallet/presentation/home/layout/home_screen.dart';
import 'package:go_router/go_router.dart';

class R {
  static const String _ = '/';
  static const String home = '${_}home';
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: R.home,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
