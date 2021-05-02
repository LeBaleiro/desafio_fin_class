import 'package:flutter/material.dart';
import 'package:flutterando_class/app/modules/home/widgets/round_button_widget.dart';

class TopCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/logo/leticia.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.41,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black,
              ],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          padding: EdgeInsets.only(bottom: 16, left: 35, right: 35, top: 39),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Leticia Baleiro',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 9),
                  Text(
                    'Um novo modelo de',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(height: 9),
                  Text(
                    'Comunidade',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1
                            ..color = Colors.white,
                        ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundButtonWidget(
                        color: Colors.white,
                        icon: Icons.play_arrow,
                        text: 'assistir',
                        onTap: () {},
                      ),
                      SizedBox(width: 9),
                      RoundButtonWidget(
                        icon: Icons.add,
                        text: 'detalhes',
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/img/icons/flagBr.png',
                  height: 25,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/img/logo/logo_white.png',
                  height: 25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
