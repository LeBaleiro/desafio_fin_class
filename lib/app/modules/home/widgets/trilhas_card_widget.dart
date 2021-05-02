import 'package:flutter/material.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';

class TrilhasCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final void Function() onTapWatch;

  const TrilhasCardWidget({required this.title, required this.subtitle, required this.onTapWatch});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 197,
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/img/icons/trails.png', width: 10),
                    SizedBox(width: 6),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: AppColors.secondary),
                    )
                  ],
                ),
                GestureDetector(
                  child: Row(
                    children: [
                      Text(
                        'Assistir',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      SizedBox(width: 5),
                      Image.asset('assets/img/icons/right.png', height: 8),
                    ],
                  ),
                  onTap: onTapWatch,
                ),
              ],
            ),
            Container(
              width: 151,
              child: Text(
                subtitle,
                style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColors.secondary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
