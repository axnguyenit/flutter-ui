import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/models/models.dart';
import 'package:shared/shared.dart';

import 'featured_plant_card.dart';
import 'plant_list_title.dart';

final recommendedPlants = <Plant>[
  Plant(
    name: 'Samantha',
    price: 400,
    image: 'assets/images/featured_plant_1.png',
    country: 'Russia',
  ),
  Plant(
    name: 'Angelica',
    price: 540,
    image: 'assets/images/featured_plant_2.png',
    country: 'Russia',
  ),
  Plant(
    name: 'Samantha',
    price: 440,
    image: 'assets/images/featured_plant_1.png',
    country: 'Russia',
  ),
];

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlantListTitle(
          title: context.translate(Strings.Home.featuredPlants),
          onPressed: () {
            log.info('*********** MORE ***********');
          },
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              ...recommendedPlants.map((plant) {
                return FeaturedPlantCard(
                  image: plant.image,
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
            ],
          ),
        ),
      ],
    );
  }
}
