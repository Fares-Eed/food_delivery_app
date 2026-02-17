import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/features/Profile/address_screen.dart';
import 'package:food_delivery_app/core/features/Profile/data/info.dart';
import 'package:food_delivery_app/core/features/Profile/personal_info.dart';
import 'package:food_delivery_app/core/features/Profile/widgets/custom_list_tile.dart';
import 'package:food_delivery_app/core/features/Profile/widgets/grey_container.dart';
import 'package:food_delivery_app/core/features/Profile/widgets/image_container.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/filled_icon_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: FilledIconButton(
            iconData: Icon(
              Icons.arrow_back_ios_new,
              size: 15,
              color: AppColors.blackColor,
            ),
            fillcolor: AppColors.lightGreyColor1,
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyles.subtitle.copyWith(color: AppColors.blackColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: FilledIconButton(
              iconData: Icon(Icons.more_horiz, color: AppColors.blackColor),
              fillcolor: AppColors.lightGreyColor1,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  ImageContainer(image: Image.asset(AppAssets.burger)),
                  SizedBox(width: 32),
                  Column(
                    children: [
                      Text(
                        UserModel.current.fullName,
                        style: TextStyles.title.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        UserModel.current.bio,
                        style: TextStyles.caption2.copyWith(fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32),
              GreyContainer(
                children: [
                  CustomListTile(
                    title: "Personal Info",
                    assetName: AppAssets.personal,
                    onTap: () {
                      pushTo(context, PersonalInfo());
                    },
                  ),
                  CustomListTile(
                    title: "Addresses",
                    assetName: AppAssets.map,
                    onTap: () {pushTo(context, AddressScreen());},
                  ),
                ],
              ),
              SizedBox(height: 20),
              GreyContainer(
                children: [
                  CustomListTile(
                    title: "Cart",
                    assetName: AppAssets.cart,
                    onTap: () {},
                  ),
                  CustomListTile(
                    title: "Favourite",
                    assetName: AppAssets.favourites,
                    onTap: () {},
                  ),
                  CustomListTile(
                    title: "Notifications",
                    assetName: AppAssets.notifications,
                    onTap: () {},
                  ),
                  CustomListTile(
                    title: "Payment Method",
                    assetName: AppAssets.payments,
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              GreyContainer(
                children: [
                  CustomListTile(
                    title: "FAQs",
                    assetName: AppAssets.faq,
                    onTap: () {},
                  ),
                  CustomListTile(
                    title: "User Reviews",
                    assetName: AppAssets.reviews,
                    onTap: () {},
                  ),
                  CustomListTile(
                    title: "Settings",
                    assetName: AppAssets.settings,
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              GreyContainer(
                children: [
                  CustomListTile(
                    title: "Log Out",
                    assetName: AppAssets.logout,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
