import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/Home/data/models_dummy_data.dart';
import 'package:food_delivery_app/features/Search/widget/fast_food_card.dart';
import 'package:gap/gap.dart';

class PopularFastFoodBuilder extends StatelessWidget {
  const PopularFastFoodBuilder({super.key});

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
                'Popular Fast food',
                style: TextStyles.title.copyWith(fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Gap(15),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(), //
          shrinkWrap: true,
          padding: EdgeInsets.all(16),
          itemCount: popularBurgers.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 21,
            crossAxisSpacing: 21,
            childAspectRatio: 153 / 144,
          ),
          itemBuilder: (context, index) {
            return FastFoodCard(burgerModel: popularBurgers[index],);
          },
        ),
      ],
    );
  }
}
