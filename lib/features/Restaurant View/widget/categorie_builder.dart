import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/Home/data/models_dummy_data.dart';
import 'package:food_delivery_app/features/Restaurant%20View/widget/categorie_card.dart';
import 'package:gap/gap.dart';
class CategorieBuilder extends StatefulWidget {
  const CategorieBuilder({super.key});

  @override
  State<CategorieBuilder> createState() => _CategorieBuilderState();
}

class _CategorieBuilderState extends State<CategorieBuilder> {
  int selectedIndex = 0; 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategorieCard(
            isSelected: selectedIndex == index, 
            onTap: () {
              setState(() {
                selectedIndex = index; 
              });
            },
            categoryModel: allCategories[index],
          );
        },
        separatorBuilder: (context, index) => const Gap(10),
        itemCount: allCategories.length,
      ),
    );
  }
}