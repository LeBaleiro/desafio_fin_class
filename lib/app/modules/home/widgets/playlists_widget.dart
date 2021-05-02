import 'package:flutter/material.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';
import 'package:flutterando_class/app/modules/models/playlist_mock_list.dart';

import 'card_header_widget.dart';

class PlaylistsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardHeaderWidget(
          title: 'playlists',
          icon: Image.asset(
            'assets/img/icons/play.png',
            height: 26,
          ),
          onTapSeeAll: () {},
        ),
        SizedBox(height: 14),
        Container(
          height: 150,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: playlistMockList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.only(bottom: 8, right: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 84,
                        width: 154,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset(playlistMockList[index].imagePath),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        playlistMockList[index].title,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        playlistMockList[index].subtitle,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
