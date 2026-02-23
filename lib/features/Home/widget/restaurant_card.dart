import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/Home/widget/restaurant_bar.dart';
import 'package:food_delivery_app/features/Restaurant%20View/page/restaurant_view_screen.dart';
import 'package:gap/gap.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () => pushTo(context, RestaurantViewScreen()),
      child: SizedBox(
        width: double.infinity,
        height: 240,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(15),
              child: Image.asset(
                AppAssets.restaurant,
                width: double.infinity,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
      
            Gap(8),
            Text(
              'rose garden restaurant',
              style: TextStyles.title.copyWith(fontWeight: FontWeight.w400),
            ),
            Gap(5),
            Text(
              'Burger - Chiken - Riche - Wings ',
              style: TextStyles.caption1.copyWith(
                color: AppColors.lightGreyColor,
              ),
            ),
      
            Gap(14),
            RestaurantBar(),
          ],
        ),
      ),
    );
  }
}
