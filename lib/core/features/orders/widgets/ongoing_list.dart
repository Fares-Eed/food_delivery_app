import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/features/orders/Data/items.dart';
import 'package:food_delivery_app/core/features/orders/widgets/secondary_button.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';

class CustomItems extends StatelessWidget {
  const CustomItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height: 24),
        itemBuilder: (context, index)  { final item = Items.onlist[index];
          return Column(
         
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.type!, style: TextStyles.caption1),
            Divider(height: 16, color: AppColors.lightGreyColor1),
            SizedBox(height: 16),
    
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:Image.asset(item.path!, fit: BoxFit.cover,)
                ),
                SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            item.title!,
                            style: TextStyles.caption1.copyWith(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Text(
                            item.number!,
                            style: TextStyles.caption1,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            item.price!,
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
                            item.subtitle!,
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
        );
        },
        itemCount: Items.onlist.length,
      ),
    );
  }
}
