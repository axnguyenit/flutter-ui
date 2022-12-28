import 'package:flutter/material.dart';
import 'package:plant/constants/constants.dart';
import 'package:plant/widgets/widgets.dart';

class PlantListTitle extends StatelessWidget {
  final String title;
  final void Function() onPressed;

  const PlantListTitle({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        AppConstants.AppHorizontalPadding,
      ),
      child: Row(
        children: <Widget>[
          PlantListTitleUnderline(text: title),
          const Spacer(),
          XButton(
            onPressed: onPressed,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            borderRadius: BorderRadius.circular(28),
            child: Text(
              context.translate('More'),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class PlantListTitleUnderline extends StatelessWidget {
  const PlantListTitleUnderline({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20 / 4),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: 20 / 4),
              height: 7,
              color: context.primaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
