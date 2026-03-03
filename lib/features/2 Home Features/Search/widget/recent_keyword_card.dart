import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/data/models_dummy_data.dart';

class RecentKeywordCard extends StatelessWidget {
  const RecentKeywordCard({
    super.key, required this.categoryModel
  });
  final CategoryModel categoryModel;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102,
      height: 46,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffEDEDED),width: 2),
        borderRadius: BorderRadius.circular(33),
        
      ),
      child: Center(child: Text(categoryModel.name,style: TextStyles.subtitle,)),
    );
  }
}