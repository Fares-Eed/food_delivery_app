import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/Food/widget/popular_burgers.dart';
import 'package:food_delivery_app/features/Home/widget/restaurant_bar.dart';
import 'package:food_delivery_app/features/Restaurant%20View/widget/categorie_builder.dart';
import 'package:food_delivery_app/features/Search/widget/circular_icon.dart';
import 'package:gap/gap.dart';

class RestaurantViewScreen extends StatefulWidget {
  const RestaurantViewScreen({super.key});

  @override
  State<RestaurantViewScreen> createState() => _RestaurantViewScreenState();
}

class _RestaurantViewScreenState extends State<RestaurantViewScreen> {
  bool isFavourite = false;

  String description =
      'Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center, //not working
          children: [
            
            _restaurantImageAndBar(context),

            Gap(24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RestaurantBar(),
                  Gap(17),

                  _restaurantNameDescription(),
                  Gap(32),
                  CategorieBuilder(),
                  Gap(32)
                ],
              ),
            ),
            PopularBurgersBuilder(),
          ],
        ),
      ),
    );
  }
  //
  //----------------------------Functions---------------------------------------------
  //

  Column _restaurantNameDescription() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Rose Garden Restaurant',
              style: TextStyles.title.copyWith(fontWeight: FontWeight.w700),
            ),
          ],
        ),
        Gap(8),
        Text(
          description,
          style: TextStyles.caption1.copyWith(color: AppColors.lightGreyColor),
        ),
      ],
    );
  }

  Stack _restaurantImageAndBar(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),bottomRight: Radius.circular(24)),
            child: Image.asset(
              AppAssets.restaurant,
              width: double.infinity,
              height: 321,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(left: 24, right: 24, top: 50, child: _restaurantBar(context)),
      ],
    );
  }

  Row _restaurantBar(BuildContext context) {
    return Row(
      children: [
        CircularIcon(
          bgColor: AppColors.backgroundColor,
          onTap: () => pop(context),
        ),
        Spacer(),
        CircularIcon(
          child: Icons.favorite,
          bgColor: AppColors.backgroundColor,
          childColor: isFavourite == true
              ? AppColors.primaryColor
              : AppColors.lightGreyColor,
          onTap: () => setState(() {
            isFavourite = !isFavourite;
          }),
        ),
      ],
    );
  }
}