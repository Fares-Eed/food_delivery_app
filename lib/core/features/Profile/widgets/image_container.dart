import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final Widget image;
  final double? height;
  final double? width;

  const ImageContainer({
    super.key,
    required this.image,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 100,
      height: height ?? 100,
      decoration: BoxDecoration(
        color: const Color(0xFFFFBF6D),
        shape: BoxShape.circle, 
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFF88222).withValues(alpha: .15),
            offset: const Offset(12, 12),
            blurRadius: 30,
            spreadRadius: 0,
          ),
        ],
      ),
      child: ClipOval( 
        child: image,
      ),
    );
  }
}
