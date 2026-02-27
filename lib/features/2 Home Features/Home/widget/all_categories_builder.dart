import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/data/models_dummy_data.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/widget/categorie_card.dart';
import 'package:gap/gap.dart';

class AllCategoriesBuilder extends StatelessWidget {
  const AllCategoriesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'All Categories',
                style: TextStyles.title.copyWith(fontWeight: FontWeight.w400),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All  >',
                  style: TextStyles.caption1.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Gap(10),
        //list view
        SizedBox(
          height: 170,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CategorieCard(categoryModel: allCategories[index],);
            },
            separatorBuilder: (context, index) {
              return Gap(16);
            },
            itemCount: allCategories.length,
          ),
        ),
      ],
    );
  }
}
