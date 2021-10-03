import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music/utils/sizeConfig.dart';

import 'colorsConfig.dart';

AppBar kAppBar(String title, List<Widget> actions, BuildContext context) {
  return AppBar(
      automaticallyImplyLeading: false,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      centerTitle: true,
      title: Text(title),
      actions: actions,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(CupertinoIcons.back, size: SizeConfig.width * 0.08),
      ),
      flexibleSpace: AppColors().appBarColor);
}

AppBar kAppBarWithLeading(String title, List<Widget> actions, Widget leading) {
  return AppBar(
      automaticallyImplyLeading: false,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      centerTitle: true,
      title: Text(title),
      actions: actions,
      leading: leading,
      flexibleSpace: AppColors().appBarColor);
}

AppBar kAppBarNoActions(String title, BuildContext context) {
  return AppBar(
      automaticallyImplyLeading: false,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      centerTitle: true,
      title: Text(title),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(CupertinoIcons.back, size: SizeConfig.width * 0.08),
      ),
      flexibleSpace: AppColors().appBarColor);
}

AppBar kAppBarNoActionsNoBack(String title, BuildContext context) {
  return AppBar(
      automaticallyImplyLeading: false,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      centerTitle: true,
      title: Text(title),
      flexibleSpace: AppColors().appBarColor);
}

AppBar kAppBarHome(String title, BuildContext context) {
  return AppBar(
      automaticallyImplyLeading: false,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      centerTitle: true,
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
          icon: Icon(CupertinoIcons.home),
        ),
        SizedBox(width: SizeConfig.width * 0.05),
      ],
      leading: IconButton(
        icon: Icon(CupertinoIcons.back, size: SizeConfig.width * 0.08),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      flexibleSpace: AppColors().appBarColor);
}

final kTextFieldTopPadding = EdgeInsets.only(
    top: SizeConfig.width * 0.01,
    left: SizeConfig.width * 0.05,
    right: SizeConfig.width * 0.05);

InputDecoration kTextFieldInputDecoration(
    String hintText, IconData icon, Function press) {
  return InputDecoration(
    hintStyle: kTextStyleHint,
    hintText: hintText,
    suffixIcon: IconButton(
      onPressed: press,
      icon: Icon(icon),
    ),
    fillColor: Colors.white,
    filled: true,
    contentPadding: kTextFieldContentPadding,
    enabledBorder: kTextFieldEnabled,
    focusedBorder: kTextFieldFocused,
    errorBorder: kTextFieldError,
  );
}

InputDecoration kTextFieldInputDecorationDark(
    String hintText, IconData icon, Function press) {
  return InputDecoration(
    hintStyle: kTextStyleBlack,
    hintText: hintText,
    suffixIcon: IconButton(
      onPressed: press,
      icon: Icon(icon),
    ),
    fillColor: Colors.white,
    filled: true,
    contentPadding: kTextFieldContentPadding,
    enabledBorder: kTextFieldEnabled,
    focusedBorder: kTextFieldFocused,
    errorBorder: kTextFieldError,
  );
}

final kTextFieldDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: AppColors.greyColorLight1, width: 1),
    color: Colors.white);

final kTextFieldContentPadding = EdgeInsets.symmetric(
    horizontal: SizeConfig.width * 0.03, vertical: SizeConfig.height * 0.015);
final kTextFieldContentSmallPadding = EdgeInsets.symmetric(
    horizontal: SizeConfig.width * 0.01, vertical: SizeConfig.height * 0.015);
final kTextFieldContentBigPadding = EdgeInsets.symmetric(
    horizontal: SizeConfig.width * 0.05, vertical: SizeConfig.height * 0.02);

final kTextFieldEnabled = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
    borderSide: BorderSide(width: 0.5, color: AppColors.greyColorDark3));

final kTextFieldError = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
    borderSide: BorderSide(width: 0.5, color: AppColors.mainColor));

final kDropdownButtonStyle = InputDecoration(
    contentPadding: kTextFieldContentPadding,
    isDense: false,
    fillColor: Colors.white,
    filled: true,
    enabledBorder: kTextFieldEnabled,
    focusedBorder: kTextFieldFocused,
    errorBorder: kTextFieldError);

final kDropdownButtonStyleSmallPadding = InputDecoration(
    contentPadding: kTextFieldContentSmallPadding,
    isDense: false,
    fillColor: Colors.white,
    filled: true,
    enabledBorder: kTextFieldEnabled,
    focusedBorder: kTextFieldFocused,
    errorBorder: kTextFieldError);

final kDropdownButtonStyleNoPadding = InputDecoration(
    // contentPadding: kTextFieldContentBigPadding,
    isDense: false,
    fillColor: Colors.white,
    filled: true,
    enabledBorder: kTextFieldEnabled,
    focusedBorder: kTextFieldFocused,
    errorBorder: kTextFieldError);

final kTextFieldFocused = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
    borderSide: BorderSide(width: 0.5, color: AppColors.greyColorDark2));

final kTextStyleBlackBold = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: SizeConfig.width * 0.035);

final kTextStyleBlack =
    TextStyle(color: Colors.black, fontSize: SizeConfig.width * 0.035);

final kTextStyleBlackSmall =
    TextStyle(color: Colors.black, fontSize: SizeConfig.width * 0.03);

final kTextStyleTime =
    TextStyle(color: Colors.grey, fontSize: SizeConfig.width * 0.03);

final kTextStyleWhite =
    TextStyle(color: Colors.white, fontSize: SizeConfig.width * 0.035);

final kTextStyleWhiteBold = TextStyle(
    fontSize: SizeConfig.width * 0.035,
    fontWeight: FontWeight.bold,
    color: Colors.white);

final kTextStyleRed =
    TextStyle(color: AppColors.mainColor, fontSize: SizeConfig.width * 0.035);

final kTextStyleRedLargeBold = TextStyle(
    color: AppColors.mainColor,
    fontSize: SizeConfig.width * 0.05,
    fontWeight: FontWeight.bold);

final kTextStyleRedBold = TextStyle(
    color: AppColors.mainColor,
    fontWeight: FontWeight.bold,
    fontSize: SizeConfig.width * 0.035);

final kTextStyleHint = TextStyle(
    color: AppColors.greyProgress, fontSize: SizeConfig.width * 0.035);

final kTextStyleOnBoardTitle = TextStyle(
    fontSize: SizeConfig.width * 0.07,
    color: AppColors.mainColor,
    fontWeight: FontWeight.bold);

final kTextStyleBlackLarge =
    TextStyle(fontSize: SizeConfig.width * 0.05, color: Colors.black);

final kTextStyleBlackLargeBold = TextStyle(
    fontSize: SizeConfig.width * 0.05,
    color: Colors.black,
    fontWeight: FontWeight.bold);

final kTextStyleBlackXLarge =
    TextStyle(fontSize: SizeConfig.width * 0.06, color: Colors.black);

final kTextStyleWhiteLarge =
    TextStyle(fontSize: SizeConfig.width * 0.05, color: Colors.white);

final kTextStyleWhiteLargeBold = TextStyle(
    fontSize: SizeConfig.width * 0.05,
    color: Colors.white,
    fontWeight: FontWeight.bold);

final kTextStyleWhiteXLarge =
    TextStyle(fontSize: SizeConfig.width * 0.06, color: Colors.white);

final kTextStyleBlue =
    TextStyle(fontSize: SizeConfig.width * 0.035, color: Colors.blueAccent);

final kTextStyleBlueMid =
    TextStyle(fontSize: SizeConfig.width * 0.04, color: Colors.blueAccent);

final kTextStyleBlueUnderline = TextStyle(
    fontSize: SizeConfig.width * 0.035,
    color: Colors.blueAccent,
    decoration: TextDecoration.underline);

final kTextStyleBlueLarge =
    TextStyle(fontSize: SizeConfig.width * 0.05, color: Colors.blueAccent);

final kTextStyleGrey400 =
    TextStyle(fontSize: SizeConfig.width * 0.035, color: Colors.grey.shade400);

final kTextStyleGrey = TextStyle(
    color: AppColors.greyColorDark2, fontSize: SizeConfig.width * 0.035);

final kTextStyleGreyLarge = TextStyle(
    color: AppColors.greyColorDark2, fontSize: SizeConfig.width * 0.05);

final kStar = Text('*', style: TextStyle(color: Colors.red));
