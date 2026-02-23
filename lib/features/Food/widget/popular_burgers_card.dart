import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/Food%20Details/page/food_details.dart';
import 'package:food_delivery_app/features/Search/widget/circular_icon.dart';
import 'package:gap/gap.dart';

class PopularBurgersCard extends StatelessWidget {
  const PopularBurgersCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () => pushTo(context, FoodDetailsScreen()),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48),
            child: Container(
              width: 153,
              height: 200,
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(12, 12),
                    blurRadius: 30,
      
                    color: Color(0x2696969A),
                  ),
                ],
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:  8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(25),
                    Text(
                      'Burger',
                      style: TextStyles.body.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Just Burger',
                      style: TextStyles.body.copyWith(
                        color: AppColors.greyColor,
                      ),
                    ),
      
                    Row(
                      children: [
                        Text(
                          '\$40',
                          style: TextStyles.subtitle.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        CircularIcon(child: Icons.add,bgColor: AppColors.primaryColor,childColor: AppColors.whiteColor,)
                      ],
                    ),
                    Gap(2)
                    
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 17,
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                AppAssets.burger,
                width: 122,
                height: 84,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
