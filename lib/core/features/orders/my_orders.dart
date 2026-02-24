import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/features/Profile/widgets/main_button.dart';
import 'package:food_delivery_app/core/features/orders/widgets/secondary_button.dart';
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
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(height: 24),
                      itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Food", style: TextStyles.caption1),
                          Divider(height: 16, color: AppColors.lightGreyColor1),
                          SizedBox(height: 16),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: AppColors.lightGreyColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(width: 14),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Pizza Hut",
                                          style: TextStyles.caption1.copyWith(
                                            color: AppColors.blackColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "#162432",
                                          style: TextStyles.caption1,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text(
                                          "\$35.25",
                                          style: TextStyles.caption1.copyWith(
                                            color: AppColors.blackColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                          child: VerticalDivider(),
                                        ),
                                        Text(
                                          "03 Items",
                                          style: TextStyles.caption2,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          Row(
                            children: [
                              SecondaryButton(
                                title: 'Track Order',
                                onPressed: () {},
                              ),
                              Spacer(),
                              SecondaryButton(
                                title: "Cancel",
                                onPressed: () {},
                                fillcolor: AppColors.backgroundColor,
                                textcolor: AppColors.primaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      itemCount: 3,
                    ),
                  ),
                  Center(child: Text("History")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
