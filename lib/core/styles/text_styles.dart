import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';

class TextStyles {
  static TextStyle headline = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w600,
  );

  static TextStyle title = TextStyle(fontSize: 20, fontWeight: FontWeight.w700);

  static TextStyle subtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

 // static TextStyle body = TextStyle(fontSize: 16);

  static TextStyle caption1 = TextStyle(fontSize: 14);

  static TextStyle caption2 = TextStyle(
    fontSize: 12,
    color: AppColors.greyColor,
  );
}