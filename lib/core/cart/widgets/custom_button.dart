import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton({super.key, required this.bgColor, required this.text, required this.width, required this.height});
  final Color bgColor;
  final String text;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontFamily: "sen",
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
