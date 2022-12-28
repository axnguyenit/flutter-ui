import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/widgets/widgets.dart';

class PlantDetailsScreen extends StatelessWidget {
  const PlantDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(
            AppConstants.AppHorizontalPadding,
            AppConstants.statusBarHeight,
            AppConstants.AppHorizontalPadding,
            AppConstants.AppHorizontalPadding,
          ),
          child: Column(
            children: const [
              XText.headlineMedium('PLANT DETAILS'),
            ],
          ),
        ),
      ),
    );
  }
}
