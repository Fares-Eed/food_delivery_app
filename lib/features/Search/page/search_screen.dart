import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/Home/widget/cart_icon.dart';
import 'package:food_delivery_app/features/Home/widget/search_bar.dart';
import 'package:food_delivery_app/features/Search/widget/circular_icon.dart';
import 'package:food_delivery_app/features/Search/widget/popular_fast_food_builder.dart';
import 'package:food_delivery_app/features/Search/widget/recent_keywords_builder.dart';
import 'package:food_delivery_app/features/Search/widget/suggested_restaurants_builder.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _searchAppBar(context),
    body: SingleChildScrollView(
      child: Column(
        children: [Gap(10),
          MySearchBar(hint:'Burger',suffixIcon: Icon(Icons.cancel),),
          Gap(24),
          RecentKeywordsBuilder(),
          Gap(32),
          SuggestedRestaurantsBuilder(),
          Gap(32),
          PopularFastFoodBuilder(),
        ],
      ),
    ),
    );
  }

  //
  //----------------------------Functions---------------------------------------------
  //


  AppBar _searchAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 65,
      leadingWidth: 62,
      leading: UnconstrainedBox(
        child: CircularIcon()
      ),

      title: Text('Search', style: TextStyles.subtitle),
      actions: [Padding(padding: const EdgeInsets.all(8.0), child: CartIcon())],
    );
  }
}