import 'package:flutter/material.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';

class FlutterandoTheme {
  static const FONT_FAMILY = 'Milliard';
  TextTheme call() {
    return TextTheme(
      //titulo
      bodyText1: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: AppColors.secondary,
      ),
      //autor
      headline1: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: AppColors.secondary,
      ),
      //action button card
      headline2: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 8,
        fontWeight: FontWeight.w500,
        color: AppColors.secondary,
        // color: AppColors.mainText,
      ),
      //section name
      headline3: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.bgProgressbar,
      ),
      //title card
      headline4: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 10,
        fontWeight: FontWeight.w700,
        color: AppColors.secondary,
      ),
      //subtitle card
      headline5: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: AppColors.subtitle,
      ),
      //autor book
      headline6: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 9,
        fontWeight: FontWeight.w500,
        color: AppColors.secondary,
      ),
      //AppBarName

      // //body 2
      // bodyText2: GoogleFonts.raleway(
      //   color: Color(0xFF969696),
      //   letterSpacing: -0.04,
      //   fontSize: 12,
      //   fontWeight: FontWeight.bold,
      // ),
      // subtitle1: ,
      // //Footnote 1
      // subtitle2: GoogleFonts.raleway(
      //   color: Colors.white,
      //   letterSpacing: 0,
      //   fontSize: 16,
      //   fontWeight: FontWeight.normal,
      // ),
      //Titulo
      // caption: ,
      //buttonLabel
      // button: ,
    );
  }
}
