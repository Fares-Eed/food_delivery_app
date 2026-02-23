import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_svg_picture.dart';

class CircularIcon extends StatefulWidget {
  const CircularIcon({
    super.key,
    this.child = AppAssets.backSvg,
    this.width = 5,
    this.height = 10,
    this.bgColor = const Color(0xffECF0F4),
    this.childColor = AppColors.blackColor,
    this.isText = false,
    this.bgwidth = 45,
    this.bgheight = 45,
    this.onTap,
  });
  final dynamic child;
  final double width;
  final double height;
  final double bgwidth;
  final double bgheight;
  final Color bgColor;
  final Color childColor;
  final bool isText;
  final Function()? onTap;

  @override
  State<CircularIcon> createState() => _CircularIconState();
}

class _CircularIconState extends State<CircularIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap:  widget.onTap,
        child: Container(
          width: widget.bgwidth,
          height: widget.bgheight,
          decoration: BoxDecoration(
            color: widget.bgColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: (widget.isText == true)
                ? Text(
                    widget.child,
                    style: TextStyles.subtitle.copyWith(color: widget.childColor),
                  )
                : (widget.child is String)
                ? CustomSvgPicture(path: widget.child, width: widget.width, height: widget.height)
                : Icon(widget.child, color: widget.childColor),
          ),
        ),
      ),
    );
  }
}
