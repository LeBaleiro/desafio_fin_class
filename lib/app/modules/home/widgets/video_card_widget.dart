import 'package:flutter/material.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';
import 'package:flutterando_class/app/modules/models/video_model.dart';

class VideoCardWidget extends StatelessWidget {
  final VideoModel model;

  const VideoCardWidget(this.model);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 240,
          height: 60,
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Row(
            children: [
              Image.asset(
                model.imagePath,
                height: 900,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    model.title,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    model.subtitle,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: 5),
      ],
    );
  }
}
