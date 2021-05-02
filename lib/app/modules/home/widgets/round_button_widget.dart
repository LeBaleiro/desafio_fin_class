import 'package:flutter/material.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';

class RoundButtonWidget extends StatelessWidget {
  final Color? color;
  final String text;
  final IconData icon;
  final void Function() onTap;

  const RoundButtonWidget({this.color, required this.icon, required this.text, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 22,
        width: 83,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 1,
              color: AppColors.secondary,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 10,
              color: color == null ? AppColors.secondary : AppColors.primary,
            ),
            SizedBox(width: 3.5),
            Text(
              text,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: color == null ? AppColors.secondary : AppColors.primary,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
