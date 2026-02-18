import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_svg_picture.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,  this.child =AppAssets.backSvg,this.width=5,this.height=10,this.bgColor=const Color(0xffECF0F4),  this.childColor=AppColors.blackColor,this.isText=false,  this.bgwidth=45,  this.bgheight=45
  });
  final dynamic child;
  final double width;
  final double height;
  final double bgwidth;
  final double bgheight;
  final Color bgColor;
  final Color childColor;
  final bool isText;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => pop(context),
        child: Container(
          
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child:(child is String )? CustomSvgPicture(
              path: child,
              width: width,
              height: height,
            )
            : child is IconData?
            Icon(child, color: childColor,):
            Center(child: Text(child,style: TextStyles.subtitle.copyWith(color: childColor)))

          ),
        ),
      ),
    );
  }
}
