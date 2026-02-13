import 'package:flutter/material.dart';
import 'package:goldy/features/gold/presentation/screens/gold_screen.dart';
import 'package:goldy/features/silver/presentation/screens/silver_screen.dart';

import '../constant/app_strings.dart';
import '../presentaion/home_screen.dart';
import 'routes.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routes.goldScreen:
        return MaterialPageRoute(builder: (context) => const GoldScreen());
      case Routes.silverScreen:
        return MaterialPageRoute(builder: (context) => const SilverScreen());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) =>
          const Scaffold(body: Center(child: Text(AppStrings.noRouteFound))),
    );
  }
}
