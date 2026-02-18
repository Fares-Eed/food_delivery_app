import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/Food/page/food_screen.dart';
import 'package:gap/gap.dart';


class CategorieCard extends StatelessWidget {
  const CategorieCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pushTo(context, FoodScreen()),
      child: Column(
        children: [
          Container(
            width: 122,
            height: 122,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 12),
                  blurRadius: 20,
                  spreadRadius: 0,
                  color:Color(0xADD8DAE0),
                ),
              ],
            ),
            child: Image.asset(
              AppAssets.burger,
              height: 61,
              width: 96,
            ),
          ),
      
          Gap(14),
          Text(
            'Burger',
            style: TextStyles.subtitle.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
