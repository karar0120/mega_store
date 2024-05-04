import 'package:flutter/material.dart';
import 'package:mega_store/core/theming/color.dart';

ThemeData themeData = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: ColorsManager.mainRed),
    primaryColor: ColorsManager.mainRed,
    scaffoldBackgroundColor: Colors.white,
    cardColor: ColorsManager.darkBlue,
    indicatorColor: ColorsManager.gray,
    fontFamily: 'Poppins',
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorsManager.mainRed,
      selectionColor: ColorsManager.mainRed,
      selectionHandleColor: ColorsManager.mainRed,
    ));
