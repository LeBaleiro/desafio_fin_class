import 'package:flutter/material.dart';
import 'package:flutterando_class/app/modules/models/books_mock_list.dart';

import 'card_header_widget.dart';

class BooksWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardHeaderWidget(
          title: 'books',
          icon: Image.asset(
            'assets/img/icons/stop.png',
            height: 26,
          ),
          onTapSeeAll: () {},
        ),
        SizedBox(height: 10),
        Container(
          height: 230,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: booksMockList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      booksMockList[index].imagePath,
                      height: 173,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 100,
                      child: Text(
                        booksMockList[index].title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Container(
                      width: 100,
                      child: Text(
                        booksMockList[index].subtitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ],
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
