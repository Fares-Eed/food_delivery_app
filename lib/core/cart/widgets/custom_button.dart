import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton({
    super.key,
    required this.bgColor,
    required this.text,
     this.width=327,
     this.height=62,
    this.radius = 12,
    this.fontsize = 14,
    this.fontweight = FontWeight.w400,  this.textcolor = Colors.white,
  });
  final Color bgColor;
  final String text;
  final double width;
  final double height;
  final double radius;
  final double fontsize;
  final FontWeight? fontweight;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontsize,
          fontFamily: "sen",
          fontWeight: fontweight,
          color: textcolor,
        ),
      ),
    );
  }
}
