import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/features/Profile/edit_address.dart';
import 'package:food_delivery_app/core/features/Profile/widgets/address_container.dart';
import 'package:food_delivery_app/core/features/Profile/widgets/main_button.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/filled_icon_button.dart';
import 'package:food_delivery_app/core/widgets/svg_pic.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: FilledIconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            iconData: Icon(
              Icons.arrow_back_ios_new,
              size: 15,
              color: AppColors.blackColor,
            ),
            fillcolor: AppColors.lightGreyColor1,
          ),
        ),
        title: Text(
          "My Address",
          style: TextStyles.subtitle.copyWith(color: AppColors.blackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            AddressContainer(title: "Home",subtitle: "Gulshan 1, Dhaka",icondata: SvgPic(assetName: AppAssets.home, width: 18, height: 20),),
            SizedBox(height: 20),
             AddressContainer(title: "Work",subtitle:"Gulshan 1, Dhaka",icondata: SvgPic(assetName: AppAssets.work, width: 18, height: 20),),
             
          ],
        ),
        
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(24),
          child: MainButton(
            title: "Add Address",
            onTap: () {
              pushTo(context, EditAddress());
            },
          ),
        )
    );
  }
}
