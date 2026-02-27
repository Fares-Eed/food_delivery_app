import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/Home/data/models_dummy_data.dart';
import 'package:food_delivery_app/features/Home/widget/restaurant_bar.dart';
import 'package:food_delivery_app/features/Restaurant%20View/page/restaurant_view_screen.dart';
import 'package:gap/gap.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key,required this.restaurantModel});
  final RestaurantModel restaurantModel;

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
              child: Image.network(
                restaurantModel.image,
                width: double.infinity,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
      
            Gap(8),
            Text(
              restaurantModel.name,
              style: TextStyles.title.copyWith(fontWeight: FontWeight.w400),
            ),
            Gap(5),
            Text(
              restaurantModel.categories,
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
