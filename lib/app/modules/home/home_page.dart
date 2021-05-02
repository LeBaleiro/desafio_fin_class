import 'package:flutter/material.dart';
import 'package:flutterando_class/app/modules/home/widgets/books_widget.dart';
import 'package:flutterando_class/app/modules/home/widgets/keep_watching_widget.dart';
import 'package:flutterando_class/app/modules/home/widgets/playlists_widget.dart';
import 'package:flutterando_class/app/modules/home/widgets/recomended_videos_widget.dart';
import 'package:flutterando_class/app/modules/home/widgets/top_card_widget.dart';
import 'package:flutterando_class/app/modules/home/widgets/trilhas_widget.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TopCardWidget(),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 13, bottom: 18),
              child: Column(
                children: [
                  KeepWatchingWidget(),
                  RecomendedVideosWidget(),
                  SizedBox(height: 27),
                  PlaylistsWidget(),
                  SizedBox(height: 27),
                  BooksWidget(),
                  SizedBox(height: 40),
                  TrilhasWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
