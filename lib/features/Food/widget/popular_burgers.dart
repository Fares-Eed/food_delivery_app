import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/Search/widget/circular_icon.dart';
import 'package:gap/gap.dart';

class PopularBurgersBuilder extends StatelessWidget {
  const PopularBurgersBuilder({super.key});

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
                'Popular Burgers',
                style: TextStyles.title.copyWith(fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Gap(15),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.all(16),
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 21,
            crossAxisSpacing: 21,
          ),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: Container(
                    width: 153,
                    height: 185,
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
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Burger',
                            style: TextStyles.body.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Just Burger',
                            style: TextStyles.body.copyWith(
                              color: AppColors.greyColor,
                            ),
                          ),

                          Row(
                            children: [
                              Text(
                                '\$40',
                                style: TextStyles.subtitle.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Spacer(),
                              CircularIcon(child: Icons.add,bgColor: AppColors.primaryColor,childColor: AppColors.whiteColor,)
                            ],
                          ),
                          
                        ],
                      ),
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
