import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/Home/widget/restaurant_card.dart';
import 'package:gap/gap.dart';

class OpenRestaurantsBuilder extends StatelessWidget {
  const OpenRestaurantsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Open Restaurants',
            style: TextStyles.title.copyWith(fontWeight: FontWeight.w400),
          ),
        ),
        Gap(15),

        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
        
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return RestaurantCard();
          },
          separatorBuilder: (context, index) {
            return Gap(24);
          },
          itemCount: 6,
        ),
      ],
    );
  }
}
