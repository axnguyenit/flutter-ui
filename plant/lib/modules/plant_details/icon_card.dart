import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/widgets/widgets.dart';

class IconCard extends StatelessWidget {
  final AppIcons icon;

  const IconCard({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: AppConstants.screenSize.height * 0.03,
      ),
      padding: const EdgeInsets.all(20 / 2),
      height: 56,
      width: 56,
      decoration: BoxDecoration(
        color: context.lightColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 15),
            blurRadius: 22,
            color: context.primaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: const Offset(-15, -15),
            blurRadius: 20,
            color: context.lightColor,
          ),
        ],
      ),
      child: AppIcon(icon: icon),
    );
  }
}
