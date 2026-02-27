import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_svg_picture.dart';
import 'package:gap/gap.dart';

class RestaurantBar extends StatelessWidget {
  const RestaurantBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //rate
        CustomSvgPicture(path: AppAssets.starSvg),
        Gap(4),
        Text(
          '4.7',
    
          style: TextStyles.subtitle.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Gap(24),
        
        //delivery
        CustomSvgPicture(path: AppAssets.deliverySvg),
        Gap(9),
        Text(
          'Free',
          style: TextStyles.subtitle.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Gap(24),
    
        //clock
        CustomSvgPicture(path: AppAssets.clockSvg),
        Gap(9),
        Text(
          '20 min',
          style: TextStyles.subtitle.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
