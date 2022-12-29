import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/global/global.dart';
import 'package:plant/modules/routes.dart';
import 'package:plant/theme/theme.dart';

class PlantApp extends StatefulWidget {
  const PlantApp({super.key});

  @override
  State<PlantApp> createState() => PlantAppState();
}

class PlantAppState extends State<PlantApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DefaultTheme().build(context),
      useInheritedMediaQuery: true,
      localizationsDelegates: const [
        SLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'Plant App',
      restorationScopeId: 'Plant App',
      debugShowCheckedModeBanner: false,
      supportedLocales: const [Locale('en'), Locale('vi')],
      locale: const Locale('en'),
      initialRoute: Screens.splash,
      onGenerateRoute: (settings) => AppRouter.generateRoute(
        settings,
      ),
    );
  }
}
