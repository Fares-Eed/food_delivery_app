import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Food/page/food_screen.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/data/models_dummy_data.dart';
import 'package:gap/gap.dart';


class CategorieCard extends StatelessWidget {
  const CategorieCard({
    super.key,required this.categoryModel  
  });
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pushTo(context, FoodScreen()),
      child: Column(
        children: [
          Container(
            width: 122,
            height: 122,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 12),
                  blurRadius: 20,
                  spreadRadius: 0,
                  color:Color(0xADD8DAE0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 20),
              child: ClipRRect(borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  categoryModel.image,
                  height: 81,
                  width: 96,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
      
          Gap(14),
          Text(
            categoryModel.name,
            style: TextStyles.subtitle.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
