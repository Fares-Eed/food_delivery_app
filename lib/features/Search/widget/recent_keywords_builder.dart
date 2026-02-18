import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/Home/widget/restaurant_card.dart';
import 'package:food_delivery_app/features/Search/widget/recent_keyword_card.dart';
import 'package:gap/gap.dart';


class RecentKeywordsBuilder extends StatelessWidget {
  const RecentKeywordsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text('Recent Keywords', style: TextStyles.title.copyWith(fontWeight: FontWeight.w400)),
        ),
        Gap(15),
        
        SizedBox(
          height: 50,
          child: ListView.separated(

            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return RecentKeywordCard();
            },
            separatorBuilder: (context, index) {
              return Gap(10);
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
