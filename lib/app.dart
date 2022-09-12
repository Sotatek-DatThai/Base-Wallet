import 'package:base_wallet/common/routes/app_routes.dart';
import 'package:flutter/material.dart';

import 'flavors.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: F.title,
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder:
              AppRoutes.routes[routeSettings.name] ?? AppRoutes.routes[R.home]!,
          settings: routeSettings,
        );
      },
      initialRoute: R.home,
    );
  }
}
