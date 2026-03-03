
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_fonts.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';

abstract class AppThemes {
  static ThemeData get lightTheme => ThemeData(
        fontFamily: AppFonts.sen,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.backgroundColor, elevation: 0,),
    colorScheme: ColorScheme.fromSeed(
      onSurface: AppColors.blackColor,
      seedColor: AppColors.primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
          enabledBorder: borderLessStyle(),
          focusedBorder: borderLessStyle(),
          errorBorder: borderLessStyle(),
          focusedErrorBorder: borderLessStyle(),
          disabledBorder: borderLessStyle(),
          hintStyle: TextStyles.caption1.copyWith(
            color: AppColors.greyColor,
          ),
          fillColor: AppColors.accentColor,
          filled: true,
        ),


  );
  static OutlineInputBorder borderLessStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(18.12),
      borderSide: BorderSide.none,
    );
  }
  }