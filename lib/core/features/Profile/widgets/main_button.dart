import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';

class MainButton extends StatelessWidget {
  final String? title;
  final Function()? onTap;
  const MainButton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        minimumSize: Size(double.infinity, 60),
        backgroundColor: AppColors.primaryColor,
      ),
      child: Text(
        title ?? "",
        style: TextStyles.title.copyWith(color: Colors.white),
      ),
    );
  }
}
