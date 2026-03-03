import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_svg_picture.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/widget/all_categories_builder.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/widget/cart_icon.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/widget/open_restaurants_builder.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/widget/search_bar.dart';
import 'package:food_delivery_app/features/Profile%20&%20orders/Profile/profile_screen.dart';
import 'package:food_delivery_app/features/Profile%20&%20orders/orders/my_orders.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _homeAppBar(context),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text('Hey Halal,', style: TextStyles.subtitle),
                  Text(
                    ' Good Afternoon!',
                    style: TextStyles.subtitle.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            MySearchBar(hint: 'Search dishes, restaurants'),
            Gap(20),
            AllCategoriesBuilder(),
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
  AppBar _homeAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 65,
      leadingWidth: 62,

      leading: GestureDetector(onTap: () => pushTo(context, MyOrders()),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomSvgPicture(path: AppAssets.menuSvg, width: 45, height: 45),
        ),
      ),

      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver to',
            style: TextStyles.caption2.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.primaryColor,
            ),
          ),
          Row(
            children: [
              Text(
                'Halal Lab office',
                style: TextStyles.caption1.copyWith(color: AppColors.greyColor),
              ),
              SizedBox(width: 8),
              CustomSvgPicture(
                path: AppAssets.downwardArrowSvg,
                color: AppColors.blackColor,
              ),
            ],
          ),
        ],
      ),

      actions: [Padding(padding: const EdgeInsets.all(8.0), child: CartIcon())],
      
    );
  }
}
