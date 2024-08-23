import 'package:flutter/material.dart';
import 'package:islamy/app_colors.dart';

class Mythemedata{
  static final ThemeData Lighttheme=ThemeData(
    primaryColor: AppColors.primarylightcolor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,

    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor
      )
    ),

  );

}