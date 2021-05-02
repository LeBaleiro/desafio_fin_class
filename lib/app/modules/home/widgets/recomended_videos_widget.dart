import 'package:flutter/material.dart';
import 'package:flutterando_class/app/modules/models/recomended_mock_list.dart';

import 'card_header_widget.dart';

class RecomendedVideosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardHeaderWidget(
          title: 'vídeos',
          onTapSeeAll: () {},
        ),
        Container(
          height: 150,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: recomendedMockList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Row(
              children: [
                Image.asset(
                  recomendedMockList[index].imagePath,
                ),
                SizedBox(
                  width: 12,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
