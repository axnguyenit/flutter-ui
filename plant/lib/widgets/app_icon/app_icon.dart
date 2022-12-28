import 'package:plant/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIcon extends StatelessWidget {
  final AppIcons icon;
  final double? width;
  final double? height;
  final Color? color;

  const AppIcon({
    Key? key,
    this.width,
    this.height,
    this.color,
    required this.icon,
  }) : super(key: key);

  factory AppIcon.app({
    double width = 100,
    double height = 24,
    Color color = Colors.grey,
  }) {
    return AppIcon(
      icon: AppIcons.app,
      width: width,
      height: height,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon.toAssetName(),
      width: width,
      height: height,
      color: color,
    );
  }
}
