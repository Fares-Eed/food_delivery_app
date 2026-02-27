import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_svg_picture.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/data/models_dummy_data.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Restaurant%20View/page/restaurant_view_screen.dart';
import 'package:gap/gap.dart';

class SuggestedRestaurantCard extends StatelessWidget {
  const SuggestedRestaurantCard({super.key,required this.restaurantModel});
  final RestaurantModel restaurantModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector( onTap: () => pushTo(context, RestaurantViewScreen()),
      child: SizedBox(
        width: 327,
        height: 64,
      
        child: Row(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(15),
                child: Image.network(
                  restaurantModel.image,
                  width: 60,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Gap(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(restaurantModel.name, style: TextStyles.subtitle),
                Gap(6),
                //rate
                Row(
                  children: [
                    CustomSvgPicture(path: AppAssets.starSvg),
                    Gap(4),
                    Text(
                      restaurantModel.rating.toString(),
      
                      style: TextStyles.subtitle.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
