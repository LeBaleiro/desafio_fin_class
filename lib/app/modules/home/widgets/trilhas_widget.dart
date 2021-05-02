import 'package:flutter/material.dart';
import 'package:flutterando_class/app/modules/home/widgets/trilhas_card_widget.dart';
import 'package:flutterando_class/app/modules/models/trilha_mock_list.dart';

class TrilhasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Trilhas de conhecimento',
        style: Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.w700),
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        height: 80,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: trilhaMockList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => Row(
            children: [
              TrilhasCardWidget(
                onTapWatch: () {},
                title: trilhaMockList[index].title,
                subtitle: trilhaMockList[index].subtitle,
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
