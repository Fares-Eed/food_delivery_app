import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_svg_picture.dart';
import 'package:food_delivery_app/features/Home/widget/restaurant_bar.dart';
import 'package:food_delivery_app/features/Search/widget/circular_icon.dart';
import 'package:gap/gap.dart';

class FoodDetailsScreen extends StatefulWidget {
  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  bool isFavourite = false;
  String Description =
      'Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 321,

            decoration: BoxDecoration(
              color: Color(0xFF9CA8B6),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),

            child: Stack(
              children: [
                Center(
                  child: Image.asset(AppAssets.burger, width: 375, height: 321),
                ),
                Positioned(
                  left: 24,
                  right: 24,
                  top: 50,
                  child: Row(
                    children: [
                      CircularIcon(bgColor: AppColors.backgroundColor),
                      Spacer(),
                      CircularIcon(
                        child: Icons.favorite,
                        bgColor: AppColors.backgroundColor,
                        childColor: AppColors.primaryColor, //make it clicable
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Burger Bistro', style: TextStyles.title),
                  ],
                ),
                Row(
                  children: [
                    CustomSvgPicture(
                      path: AppAssets.reslogoSvg,
                      width: 22,
                      height: 22,
                    ),
                    Gap(11),
                    Text('Just Burger', style: TextStyles.caption1),
                  ],
                ),
                Gap(23),
                RestaurantBar(),
                Text(
                  Description,
                  style: TextStyles.caption1.copyWith(
                    color: AppColors.lightGreyColor,
                  ),
                ),
                Gap(20),
                Row(
                  children: [
                    Text(
                      'Size:',
                      style: TextStyles.caption1.copyWith(
                        color: AppColors.lightGreyColor,
                      ),
                    ),
                    Gap(14),
                    CircularIcon(child: '10”', isText: true),
                    Gap(10),
                    CircularIcon(
                      child: '14”',
                      childColor: AppColors.primaryColor,
                      isText: true,
                    ),
                    Gap(10),
                    CircularIcon(child: '16”', isText: true),
                    Gap(20),
                  ],
                ),
                Row(
                  children: [
                    Text('ingridents', style: TextStyles.caption1),
                  ],
                ),
                Gap(20),
                Row(
                  children: [
                    CircularIcon(
                      child: AppAssets.ing1Svg,
                      bgColor: Color(0xffFFEBE4),
                      width: 24,
                      height: 24, bgwidth: 50,bgheight: 50,
                    ),
                    CircularIcon(
                      child: AppAssets.ing2Svg,
                      bgColor: Color(0xffFFEBE4),
                      width: 20,
                      height: 20, bgwidth: 50,bgheight: 50,
                    ),
                    CircularIcon(
                      child: AppAssets.ing3Svg,
                      bgColor: Color(0xffFFEBE4),
                      width: 24,
                      height: 24, bgwidth: 50,bgheight: 50,
                    ),
                    CircularIcon(
                      child: AppAssets.ing4Svg,
                      bgColor: Color(0xffFFEBE4),
                      width: 24,
                      height: 24, bgwidth: 50,bgheight: 50,
                    ),
                    CircularIcon(
                      child: AppAssets.ing5Svg,
                      bgColor: Color(0xffFFEBE4),
                      width: 24,
                      height: 24,
                      bgwidth: 50,bgheight: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
