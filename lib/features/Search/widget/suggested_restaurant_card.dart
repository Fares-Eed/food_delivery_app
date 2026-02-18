import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_svg_picture.dart';
import 'package:gap/gap.dart';

class SuggestedRestaurantCard extends StatelessWidget {
  const SuggestedRestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327,
      height: 64,

      child: Row(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(15),
              child: Image.asset(
                AppAssets.restaurant,
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
              Text('Just Burger', style: TextStyles.subtitle),
              Gap(6),
              //rate
              Row(
                children: [
                  CustomSvgPicture(path: AppAssets.starSvg),
                  Gap(4),
                  Text(
                    '4.7',

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
    );
  }
}
