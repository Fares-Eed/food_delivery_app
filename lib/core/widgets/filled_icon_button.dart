import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';

class FilledIconButton extends StatelessWidget {
  final Color? fillcolor;
  final Widget iconData;
  final Function()? onPressed;
   const FilledIconButton({
    super.key,
    this.fillcolor,
    required this.iconData,
     this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return 
       IconButton.filled(onPressed: onPressed, icon: iconData,style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(fillcolor ?? AppColors.backgroundColor ),
        ));
    
  }
}