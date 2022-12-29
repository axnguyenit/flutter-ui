import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/models/models.dart';
import 'package:plant/widgets/widgets.dart';

import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  final Plant plant;

  const ImageAndIcons({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 24),
      child: SizedBox(
        height: AppConstants.screenSize.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: AppConstants.statusBarHeight,
                  ),
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    icon: const AppIcon(icon: AppIcons.arrowLeft),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  const IconCard(icon: AppIcons.sun),
                  const IconCard(icon: AppIcons.temperature),
                  const IconCard(icon: AppIcons.humidity),
                  const IconCard(icon: AppIcons.wind),
                  const Spacer(),
                ],
              ),
            ),
            Container(
              height: AppConstants.screenSize.height * 0.8,
              width: AppConstants.screenSize.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(64),
                  bottomLeft: Radius.circular(64),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: context.primaryColor.withOpacity(0.29),
                  ),
                ],
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage(AppImages.mainPlantImage),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
