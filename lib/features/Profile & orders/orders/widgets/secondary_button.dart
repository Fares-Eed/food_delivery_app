import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.title,
    this.fillcolor,
   required this.onPressed,
     this.textcolor,
  });
  final String? title;
  final Color? fillcolor;
  final Color? textcolor;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: fillcolor ?? AppColors.primaryColor,
        minimumSize: Size(140, 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        side: BorderSide(color: AppColors.primaryColor),
      ),
      child: Text(
        title ?? "",
        style: TextStyles.caption2.copyWith(
          color: textcolor ?? AppColors.backgroundColor,
        ),
      ),
    );
  }
}
