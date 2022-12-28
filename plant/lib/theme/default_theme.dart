import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';

import 'base_theme.dart';

class DefaultTheme extends BaseTheme {
  final int _primaryColor = 0xFF0C9869;

  @override
  ColorScheme get colorScheme {
    final primaryColorSwatch = MaterialColor(
      _primaryColor,
      const <int, Color>{
        500: AppColors.primaryColor,
        700: AppColors.primaryColor,
      },
    );

    return ColorScheme.fromSwatch(
      primarySwatch: primaryColorSwatch,
      cardColor: AppColors.light,
      backgroundColor: AppColors.light,
      errorColor: AppColors.danger,
    ).copyWith(
      onBackground: AppColors.backgroundSubdued,
      tertiary: AppColors.border,
    );
  }
}
