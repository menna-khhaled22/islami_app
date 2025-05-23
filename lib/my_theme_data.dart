import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';

class MyThemeData {
  static final ThemeData LightMode = ThemeData(
      canvasColor: AppColors.primaryLightColor,
      primaryColor: AppColors.primaryLightColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.blackColor,
        //showUnselectedLabels: true,
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            color: AppColors.blackColor,
            fontSize: 30,
            fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
            color: AppColors.blackColor,
            fontSize: 25,
            fontWeight: FontWeight.w700),
        bodySmall: TextStyle(
            color: AppColors.blackColor,
            fontSize: 25,
            fontWeight: FontWeight.bold),
      ));

  static final ThemeData DarkMode = ThemeData(
      canvasColor: AppColors.primaryDarkColor,
      primaryColor: AppColors.primaryDarkColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.yellowColor,
        //showUnselectedLabels: true,
      ),
      bottomSheetTheme:
          BottomSheetThemeData(backgroundColor: AppColors.primaryDarkColor),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 30,
            fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 25,
            fontWeight: FontWeight.w700),
        bodySmall: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 25,
            fontWeight: FontWeight.bold),
      ));
}
