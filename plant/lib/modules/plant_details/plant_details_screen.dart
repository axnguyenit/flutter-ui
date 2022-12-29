import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/models/models.dart';
import 'package:plant/widgets/widgets.dart';
import 'package:shared/shared.dart';

import 'image_and_icons.dart';
import 'name_and_price.dart';

class PlantDetailsScreen extends StatelessWidget {
  final Plant plant;

  const PlantDetailsScreen({
    super.key,
    required this.plant,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ImageAndIcons(plant: plant),
                  NameAndPrice(plant: plant),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: AppConstants.screenSize.width / 2,
                child: ElevatedButton(
                  onPressed: () {
                    log.info('*********** BUY NOW ***********');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      context.primaryColor,
                    ),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(vertical: 20),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(32),
                        ),
                      ),
                    ),
                  ),
                  child: XText.labelLarge(
                    context.translate('Buy Now'),
                    style: context.labelLarge?.copyWith(
                      color: AppColors.light,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(vertical: 20),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    log.info('*********** DESCRIPTION ***********');
                  },
                  child: XText.labelLarge(
                    context.translate('Description'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
