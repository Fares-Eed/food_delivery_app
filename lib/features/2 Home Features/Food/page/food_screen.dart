import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_svg_picture.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Food/widget/popular_burgers.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/widget/open_restaurants_builder.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Search/page/search_screen.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Search/widget/circular_icon.dart';
import 'package:gap/gap.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PopularBurgersBuilder(),
            Gap(30),
            OpenRestaurantsBuilder(),
          ],
        ),
      ),
    );
  }
  //
  //----------------------------Functions---------------------------------------------
  //
  AppBar _AppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 79,
      leadingWidth: 62,
      leading: UnconstrainedBox(child: CircularIcon(onTap: () => pop(context),)),

      title: Container(
        width: 102,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BURGER',
              style: TextStyles.caption2.copyWith(fontWeight: FontWeight.w700),
            ),
            Gap(7),
            CustomSvgPicture(
              path: AppAssets.downwardArrowSvg,
              width: 11,
              height: 8,
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: UnconstrainedBox(
            child: Row(
              children: [
                CircularIcon(
                  child: AppAssets.searchSvg,
                  bgColor: AppColors.blackColor,
                  width: 15,
                  height: 15,
                  onTap: () => pushTo(context, SearchScreen()),
                ),
                CircularIcon(child: AppAssets.filterSvg, width: 22, height: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
