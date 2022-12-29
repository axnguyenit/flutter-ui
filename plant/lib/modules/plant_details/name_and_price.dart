import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/models/models.dart';
import 'package:plant/widgets/widgets.dart';

class NameAndPrice extends StatelessWidget {
  final Plant plant;
  const NameAndPrice({
    super.key,
    required this.plant,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppConstants.AppHorizontalPadding,
        right: AppConstants.AppHorizontalPadding,
        bottom: AppConstants.AppHorizontalPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              XText.displayMedium(
                plant.name,
              ),
              XText.bodyLarge(
                plant.country,
                style: context.bodyLarge?.copyWith(
                  color: context.primaryColor.withOpacity(0.5),
                ),
              ),
            ],
          ),
          XText.headlineMedium(
            '\$${plant.price}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.headlineMedium?.copyWith(
              color: context.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
