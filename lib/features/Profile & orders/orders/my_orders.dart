import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/Profile%20&%20orders/orders/widgets/history_list.dart';
import 'package:food_delivery_app/features/Profile%20&%20orders/orders/widgets/ongoing_list.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/filled_icon_button.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: FilledIconButton(
            onPressed: () {},
            iconData: Icon(
              Icons.arrow_back_ios_new,
              size: 15,
              color: AppColors.blackColor,
            ),
            fillcolor: AppColors.lightGreyColor1,
          ),
        ),
        title: Text(
          "My Orders",
          style: TextStyles.subtitle.copyWith(color: AppColors.blackColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: FilledIconButton(
              iconData: Icon(Icons.more_horiz, color: AppColors.blackColor),
              fillcolor: AppColors.lightGreyColor1,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              unselectedLabelColor: AppColors.lightGreyColor,
              indicatorColor: AppColors.primaryColor,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
              labelColor: AppColors.primaryColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 2,
              tabs: [
                Tab(child: Text("Ongoing")),
                Tab(child: Text("History")),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  CustomItems(),
                  HistoryList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
