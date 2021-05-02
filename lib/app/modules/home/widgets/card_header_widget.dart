import 'package:flutter/material.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';

class CardHeaderWidget extends StatelessWidget {
  final String title;
  final Image? icon;
  final void Function() onTapSeeAll;

  const CardHeaderWidget({required this.title, this.icon, required this.onTapSeeAll});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        children: [
          icon != null
              ? icon!
              : Container(
                  child: Text(''),
                ),
          Positioned(
            left: 13,
            top: 6,
            child: RichText(
              text: TextSpan(text: 'Flutterando ', style: Theme.of(context).textTheme.headline3!.copyWith(color: AppColors.secondary), children: [
                TextSpan(
                  text: title,
                  style: Theme.of(context).textTheme.headline3!.copyWith(color: AppColors.accent),
                ),
              ]),
            ),
          ),
          Positioned(
            right: 0,
            top: 6,
            child: GestureDetector(
              child: Row(
                children: [
                  Text('ver todos', style: Theme.of(context).textTheme.headline4),
                  SizedBox(width: 5),
                  Image.asset('assets/img/icons/right.png', height: 7.38),
                ],
              ),
              onTap: onTapSeeAll,
            ),
          ),
        ],
      ),
    );
  }
}
