import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';

class TextStyles {
  static TextStyle headline = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w600,
  );

  static TextStyle title = TextStyle(fontSize: 20, fontWeight: FontWeight.w700);

  static TextStyle subtitle = TextStyle(fontSize: 17,
    fontWeight: FontWeight.w400,
  );

  static TextStyle button = TextStyle(fontSize: 16
   , fontWeight: FontWeight.w700,
  );
  static TextStyle body = TextStyle(fontSize: 15
   , fontWeight: FontWeight.w400,
  );

  static TextStyle caption1 = TextStyle(fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle caption2 = TextStyle(fontSize: 12,
    color: AppColors.greyColor,
    fontWeight: FontWeight.w400,

  );
 static TextStyle size30 = TextStyle(fontSize: 30,
fontWeight: FontWeight.w700,
color: Colors.white,
);

static TextStyle size13 = TextStyle(fontSize: 13,
fontWeight: FontWeight.w400,
color: Colors.white,
);



  
}