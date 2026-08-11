import 'package:chatapp/constants/appcolors.dart';
import 'package:flutter/material.dart';

class Appthemes{
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Appcolors.scaffloadlight,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: Appcolors.buttonlightmode)
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: Appcolors.textlightmode),
      bodyLarge: TextStyle(color: Appcolors.textlightmode)
    )
  );
  static final ThemeData DarkTheme = ThemeData(
    scaffoldBackgroundColor: Appcolors.scaffloaddark,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: Appcolors.buttondarkmode)
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: Appcolors.textdarkmode),
      bodyLarge: TextStyle(color: Appcolors.textdarkmode),
    ),
  );
}