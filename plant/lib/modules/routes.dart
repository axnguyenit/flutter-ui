import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';

import 'home/home_screen.dart';
import 'splash/splash_screen.dart';
import 'plant_details/plant_details_screen.dart';

class AppRouter {
  static final _singleton = AppRouter._internal();

  factory AppRouter() => _singleton;

  AppRouter._internal();

  Map<String, WidgetBuilder> allRoutes(BuildContext context) {
    return {
      Screens.home: (_) => const HomeScreen(),
      Screens.splash: (_) => const SplashScreen(),
      Screens.plantDetails: (_) => const PlantDetailsScreen(),
    };
  }
}
