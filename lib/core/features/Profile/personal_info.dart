import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/features/Profile/data/info.dart';
import 'package:food_delivery_app/core/features/Profile/edit_profile.dart';
import 'package:food_delivery_app/core/features/Profile/widgets/custom_list_tile.dart';
import 'package:food_delivery_app/core/features/Profile/widgets/grey_container.dart';
import 'package:food_delivery_app/core/features/Profile/widgets/image_container.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/filled_icon_button.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left:24),
          child: FilledIconButton(
            iconData: Icon(
              Icons.arrow_back_ios_new,
              size: 15,
              color: AppColors.blackColor,
            ),
            fillcolor: AppColors.lightGreyColor1,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          "Personal Info",
          style: TextStyles.subtitle.copyWith(color: AppColors.blackColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: TextButton(
              onPressed: () {
                pushTo(context, EditProfileScreen());
              },
              child: Text(
                "EDIT",
                style: TextStyles.caption1.copyWith(color: Color(0xffFF7622)),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 20),
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
                  title: "Full Name",
                  assetName: AppAssets.personal,
                  onTap: () {},
                  subtitle: UserModel.current.fullName,
                  arrow: false,
                ),
                CustomListTile(
                  title: "Email",
                  assetName: AppAssets.email,
                  onTap: () {},
                  subtitle: UserModel.current.email,
                  arrow: false,
                ),
                CustomListTile(
                  title: "Phone Number",
                  assetName: AppAssets.call,
                  onTap: () {},
                  subtitle: UserModel.current.phone,
                  arrow: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
