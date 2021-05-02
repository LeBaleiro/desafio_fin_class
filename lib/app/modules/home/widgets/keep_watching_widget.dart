import 'package:flutter/material.dart';
import 'package:flutterando_class/app/modules/home/widgets/video_card_widget.dart';
import 'package:flutterando_class/app/modules/models/videos_mock_list.dart';

class KeepWatchingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Continue de onde parou',
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(height: 12),
        Container(
          height: 60,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) => VideoCardWidget(videosMockList[index]),
          ),
        ),
        SizedBox(height: 36),
      ],
    );
  }
}
