import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'modules/plant_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(_runApp, _reportError);
}

Future<void> _runApp() async {
  runApp(const PlantApp());
}

void _reportError(Object error, StackTrace _) {
  log.error(error.toString());
}
