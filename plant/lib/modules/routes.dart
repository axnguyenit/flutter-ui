import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/models/models.dart';

import 'error/error_screen.dart';
import 'home/home_screen.dart';
import 'plant_details/plant_details_screen.dart';
import 'splash/splash_screen.dart';

class AppRouter {
  static final _singleton = AppRouter._internal();

  factory AppRouter() => _singleton;

  AppRouter._internal();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Screens.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case Screens.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case Screens.plantDetails:
        final arguments = settings.arguments as Map<String, dynamic>;
        final plant = arguments['plant'] as Plant;

        return MaterialPageRoute(
          builder: (context) => PlantDetailsScreen(
            plant: plant,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const ErrorScreen();
          },
        );
    }
  }
}
