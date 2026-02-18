import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_svg_picture.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4),
    
          child: UnconstrainedBox(
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: AppColors.blackColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: CustomSvgPicture(
                  path: AppAssets.shoppingBagSvg,
                  width: 18,
                  height: 20,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: TextStyles.subtitle.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.backgroundColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
