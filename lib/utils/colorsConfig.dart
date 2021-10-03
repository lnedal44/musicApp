import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  static Color mainColor;
  static Color secondColor;
  static Gradient mainGradient;

  static Color secondaryMedOrangeColor = Color(0xFFEDA694);
  static Color secondaryLightOrangeColor = Color(0xFFFDE1D6);

  static Color greyProgress = Color(0xFFC6CBD0);

  static Color greyColorDark2 = Color(0xFF898989);
  static Color greyColorDark3 = Color(0xFFC1C1C1);

  static Color greyColorLight1 = Color(0xFFEBEBEB);

  static Color black = Colors.black;
  static Color green = Color(0xFF70B942);
  static Color red = Color(0xFFD32F2F);
  static Color teal = Color(0xFF008080);
  static Color orange = Color(0xFFFFA500);
  static Color lightGreen = Color(0xFF01d16b);
  static Color lightBlue = Color(0xFF019FF4);
  static Color yellowBlue = Color(0xFFD9DF16);
  static Color pinkBlue = Color(0xFFFF0EA7);

  static LinearGradient redGradient = LinearGradient(
      colors: [AppColors.red, Colors.black],
      begin: const FractionalOffset(1, 0.0),
      end: const FractionalOffset(0.0, 1.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  static LinearGradient yellowGradient = LinearGradient(
      colors: [AppColors.yellowBlue, Colors.black],
      begin: const FractionalOffset(1, 0.0),
      end: const FractionalOffset(0.0, 1.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  static LinearGradient tealGradient = LinearGradient(
      colors: [AppColors.teal, AppColors.pinkBlue],
      begin: const FractionalOffset(1, 0.0),
      end: const FractionalOffset(0.0, 1.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  static LinearGradient orangeGradient = LinearGradient(
      colors: [AppColors.orange, Colors.black],
      begin: const FractionalOffset(1, 0.0),
      end: const FractionalOffset(0.0, 1.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  static LinearGradient greenBlueGradient = LinearGradient(
      colors: [AppColors.lightBlue, AppColors.lightGreen],
      begin: const FractionalOffset(1, 0.0),
      end: const FractionalOffset(0.0, 1.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  static LinearGradient redYellowGradient = LinearGradient(
      colors: [Colors.yellow, AppColors.red],
      begin: const FractionalOffset(1, 0.0),
      end: const FractionalOffset(0.0, 1.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  Widget appBarColor = Material(
    elevation: 5.0,
    child: Container(
      decoration: BoxDecoration(gradient: mainGradient),
    ),
  );
}
