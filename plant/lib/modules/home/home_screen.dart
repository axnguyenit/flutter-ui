import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/widgets/widgets.dart';

import 'search_box_header.dart';
import 'recommended_plants.dart';
import 'featured_plants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const AppIcon(icon: AppIcons.menu),
        onPressed: () {},
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.AppHorizontalPadding * 1.5,
        vertical: AppConstants.AppHorizontalPadding * 0.5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: context.primaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const AppIcon(icon: AppIcons.flower),
            onPressed: () {},
          ),
          IconButton(
            icon: const AppIcon(icon: AppIcons.heart),
            onPressed: () {},
          ),
          IconButton(
            icon: const AppIcon(icon: AppIcons.user),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: AppConstants.AppHorizontalPadding,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SearchBoxHeader(),
              SizedBox(height: 60),
              RecommendedPlants(),
              FeaturedPlants(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomBar(context),
    );
  }
}
