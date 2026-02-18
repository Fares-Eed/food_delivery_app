import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:gap/gap.dart';

class PopularFastFoodBuilder extends StatelessWidget {
  const PopularFastFoodBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text(
                'Popular Fast food',
                style: TextStyles.title.copyWith(fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Gap(15),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(), //
          shrinkWrap: true,
          padding: EdgeInsets.all(16),
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 21,
            crossAxisSpacing: 21,
            childAspectRatio: 153 / 144,
          ),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 44),
                  child: Container(
                    width: 153,
                    height: 102,
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(12, 12),
                          blurRadius: 30,
                          
                          color: Color(0x2696969A),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Burger',
                          style: TextStyles.body.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                          
                        ),
                        Text(
                          'Cheese Burger',
                          style: TextStyles.body.copyWith(
                            color: AppColors.greyColor,
                          ),
                        ),
                        Gap(13)

                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 17,
                  top: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      AppAssets.burger,
                      width: 122,
                      height: 84,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
