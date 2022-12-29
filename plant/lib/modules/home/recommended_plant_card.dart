import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/models/models.dart';
import 'package:plant/widgets/widgets.dart';

class RecommendedPlantCard extends StatelessWidget {
  final Plant plant;
  final VoidCallback onPressed;

  const RecommendedPlantCard({
    super.key,
    required this.plant,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: AppConstants.AppHorizontalPadding,
        bottom: 40,
      ),
      width: AppConstants.screenSize.width * 0.4,
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          children: <Widget>[
            Image.asset(plant.image),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 30,
                    color: context.primaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      XText.labelMedium(
                        plant.name.toUpperCase(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      XText(
                        plant.country.toUpperCase(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.bodySmall?.copyWith(
                          color: context.primaryColor.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  XText.labelMedium(
                    '\$${plant.price}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.labelMedium?.copyWith(
                      color: context.primaryColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
