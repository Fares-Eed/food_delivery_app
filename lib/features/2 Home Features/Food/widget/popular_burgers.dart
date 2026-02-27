import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/data/models_dummy_data.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Food/widget/popular_burgers_card.dart';
import 'package:gap/gap.dart';

class PopularBurgersBuilder extends StatelessWidget {
  const PopularBurgersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text(
                'Popular Burgers',
                style: TextStyles.title.copyWith(fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Gap(15),
      
        Padding(
          padding: const EdgeInsets.only(left:  12),
          child: GridView.builder(
            
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          //  padding: EdgeInsets.all(16),
            itemCount: popularBurgers.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 21,
              crossAxisSpacing: 21,
             childAspectRatio: 153 / 180,//the defulte card shap in GridView  is cubed so we need to put this 
            ),
            itemBuilder: (context, index) {
              return PopularBurgersCard(burgerModel:  popularBurgers[index]);
            },
          ),
        ),
      ],
    );
  }
}
