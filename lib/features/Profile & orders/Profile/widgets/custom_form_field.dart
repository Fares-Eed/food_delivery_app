import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';

class CustomFormField extends StatelessWidget {
  final String? title;
  final int? keyboardtype;
  final bool? maxlines;
  final String? Function(String?)? validator;
  const CustomFormField({
    super.key,
    required this.title,
    this.keyboardtype,
    this.maxlines, this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "",
          style: TextStyles.caption1.copyWith(color: AppColors.blackColor),
        ),
        SizedBox(height: 8),
        TextFormField(
          validator: validator,
          keyboardType: keyboardtype == 1
              ? TextInputType.emailAddress
              : keyboardtype == 2
              ? TextInputType.number
              : TextInputType.text,
          minLines: maxlines == false ? 3 : 1,
          maxLines: maxlines == false ? null : 1,

          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.formfieldColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
