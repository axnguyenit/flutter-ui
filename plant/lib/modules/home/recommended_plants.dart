import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/models/models.dart';
import 'package:plant/widgets/text/x_text.dart';
import 'package:shared/shared.dart';

import 'plant_list_title.dart';

final recommendedPlants = <Plant>[
  Plant(
    name: 'Samantha',
    price: 400,
    image: 'assets/images/recommended_plant_1.png',
    country: 'Russia',
  ),
  Plant(
    name: 'Angelica',
    price: 540,
    image: 'assets/images/recommended_plant_2.png',
    country: 'Russia',
  ),
  Plant(
    name: 'Samantha',
    price: 440,
    image: 'assets/images/recommended_plant_3.png',
    country: 'Russia',
  ),
];

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlantListTitle(
          title: context.translate(Strings.Home.recommendedPlants),
          onPressed: () {
            log.info('RECOMMENDED MORE');
          },
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ...recommendedPlants.map((plant) {
              return RecommendedPlantCard(
                  plant: plant,
                  onPressed: () {
                    Navigator.of(context).pushNamed(Screens.plantDetails);
                  });
            }).toList(),
            const SizedBox(width: AppConstants.AppHorizontalPadding),
          ]),
        ),
      ],
    );
  }
}

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
        bottom: 32,
      ),
      width: AppConstants.screenSize.width * 0.4,
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          children: <Widget>[
            Image.asset(plant.image),
            Container(
              padding: const EdgeInsets.all(20 / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 20,
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
