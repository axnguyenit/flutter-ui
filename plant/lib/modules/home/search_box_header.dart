import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/widgets/app_image/app_image.dart';
import 'package:plant/widgets/widgets.dart';

class SearchBoxHeader extends StatelessWidget {
  const SearchBoxHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 64),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: AppConstants.AppHorizontalPadding,
              right: AppConstants.AppHorizontalPadding,
              bottom: 36 + 20,
            ),
            decoration: BoxDecoration(
              color: context.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                XText.headlineMedium(
                  context.translate(
                    Strings.Home.greetings,
                    params: ['Uishopy'],
                  ),
                  style: context.headlineMedium?.copyWith(
                    color: AppColors.light,
                  ),
                ),
                const Spacer(),
                const AppImage(
                  image: AppImages.logo,
                  width: 64,
                  height: 64,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -24,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                horizontal: AppConstants.AppHorizontalPadding,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.AppHorizontalPadding,
              ),
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 30,
                    color: context.primaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: context.translate('Search'),
                        hintStyle: TextStyle(
                          color: context.primaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const AppIcon(
                    icon: AppIcons.search,
                    width: 16,
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
