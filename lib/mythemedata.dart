import 'package:flutter/material.dart';
import 'package:islamy/app_colors.dart';

class Mythemedata{
  static final ThemeData Lighttheme=ThemeData(
    primaryColor: AppColors.primarylightcolor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: AppColors.blackColor
      )
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
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600
      ),
      bodySmall: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        color: AppColors.blackColor
      ),
      titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: AppColors.blackColor
      ),
    ),

  );

  static final ThemeData darkTheme=ThemeData(
    primaryColor: AppColors.primarydarkcolor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
            color: AppColors.whiteColor
        )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.yellowColor,
      unselectedItemColor: AppColors.whiteColor,

    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.whiteColor
      ),
      bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
        color: AppColors.whiteColor
      ),
      bodySmall: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.whiteColor
      ),
      titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: AppColors.whiteColor
      ),
    ),

  );
}