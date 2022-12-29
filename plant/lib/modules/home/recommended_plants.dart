import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/models/models.dart';
import 'package:shared/shared.dart';

import 'plant_list_title.dart';
import 'recommended_plant_card.dart';

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
            log.info('*********** MORE ***********');
          },
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ...recommendedPlants.map((plant) {
              return RecommendedPlantCard(
                plant: plant,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    Screens.plantDetails,
                    arguments: {
                      'plant': plant,
                    },
                  );
                },
              );
            }).toList(),
            const SizedBox(width: AppConstants.AppHorizontalPadding),
          ]),
        ),
      ],
    );
  }
}
