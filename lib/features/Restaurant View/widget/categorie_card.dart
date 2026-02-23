import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';

class CategorieCard extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const CategorieCard({
    super.key,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, 
      child: Container(
        width: 102,
        height: 46,
        decoration: BoxDecoration(
       
          color: isSelected ? AppColors.primaryColor : Colors.white,
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : const Color(0xffEDEDED),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(33),
        ),
        child: Center(
          child: Text(
            'Burger',
            style: TextStyles.subtitle.copyWith(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}