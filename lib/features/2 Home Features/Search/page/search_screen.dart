import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/widget/cart_icon.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/widget/search_bar.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Search/widget/circular_icon.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Search/widget/popular_fast_food_builder.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Search/widget/recent_keywords_builder.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Search/widget/suggested_restaurants_builder.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _searchAppBar(context),
    body: SingleChildScrollView(
      child: Column(
        children: [Gap(10),
          MySearchBar(hint:'Burger',suffixIcon: Icon(Icons.cancel),enabled: true,autofocus: true,),
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
        child: CircularIcon(onTap: () => pop(context),)
      ),

      title: Text('Search', style: TextStyles.subtitle),
      actions: [Padding(padding: const EdgeInsets.all(8.0), child: CartIcon())],
    );
  }
}