
import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_fonts.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';

abstract class AppThemes {
  static ThemeData get lightTheme => ThemeData(
        fontFamily: AppFonts.sen,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    colorScheme: ColorScheme.fromSeed(
      onSurface: AppColors.blackColor,
      seedColor: AppColors.primaryColor,
    ),

  );
  }