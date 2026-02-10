import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

void main() {
  runApp(const Goldy());
}

class Goldy extends StatelessWidget {
  const Goldy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.homeScreen,
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}
