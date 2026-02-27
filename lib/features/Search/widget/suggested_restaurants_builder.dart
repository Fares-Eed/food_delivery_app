import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/Home/data/models_dummy_data.dart';
import 'package:food_delivery_app/features/Search/widget/suggested_restaurant_card.dart';
import 'package:gap/gap.dart';

class SuggestedRestaurantsBuilder extends StatelessWidget {
  const SuggestedRestaurantsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Suggested Restaurants',
            style: TextStyles.title.copyWith(fontWeight: FontWeight.w400),
          ),
        ),
        Gap(15),

        SizedBox(
          height: 240, //Number of Suggested Restaurants* 80
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),

            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return SuggestedRestaurantCard(restaurantModel: openRestaurants[index],);
            },
            separatorBuilder: (context, index) {
              return Column(
                children: [
                  Divider(color: Color(0xffEBEBEB)),
                  Gap(14),
                ],
              );
            },
            itemCount: 3,
          ),
        ),
        Gap(14),

        Divider(color: Color(0xffEBEBEB)),
      ],
    );
  }
}
