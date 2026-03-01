import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/widgets/custom_text_field.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Search/page/search_screen.dart';


class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key,required this.hint,this.enabled=false,this.suffixIcon,this.autofocus=false});
  final String hint ;
  final bool enabled ;
  final bool autofocus ;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  20),
      child: GestureDetector(
        onTap: () {
          pushTo(context, SearchScreen());
        },
        child: CustomTextField(
          hint: hint,
          enabled:enabled ,
          prefixIcon:Icon(Icons.search_rounded),
          suffixIcon: suffixIcon,
          autofocus: autofocus,
        ),
      ),
    );
  }
}