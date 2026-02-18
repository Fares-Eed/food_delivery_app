import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.filledColor, required this.label});
  final Color filledColor;
  final String label;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: filledColor,
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 16,
            fontFamily: "sen",
            fontWeight: FontWeight.w400,
            color: Color(0xff32343E),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
