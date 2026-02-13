import 'package:flutter/material.dart';
import 'package:goldy/core/networking/dio_helper.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
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
