import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/3%20Cart%20&%20Payment%20Features/cart/Cartscreen.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_svg_picture.dart';
import 'package:food_delivery_app/core/widgets/main_button.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/widget/restaurant_bar.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Search/widget/circular_icon.dart';
import 'package:gap/gap.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({super.key});

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  bool isFavourite = false;
  int choosedSize = 14;
  int counter = 1;
  String description =
      'Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _foodImageAndBar(context),

            Gap(24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _foodNameAndRestaurant(),
                  Gap(23),
                  RestaurantBar(),
                  _description(),
                  Gap(20),
                  _foodSize(),
                  _foodIngredients(),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 184,
        decoration: BoxDecoration(
          color: Color(0xffF0F5FA),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Gap(20),
              Row(
                children: [
                  Text('\$32', style: TextStyles.title),
                  Spacer(),
                  _counter(),
                ],
              ),
              Gap(24),
              MainButton(
                text: 'Add to cart',
                onPressed: () {
                  pushTo(context, Cartscreen());
                  //add to cart logic will be here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  //
  //----------------------------Functions---------------------------------------------
  //

  Text _description() {
    return Text(
      description,
      style: TextStyles.caption1.copyWith(color: AppColors.lightGreyColor),
    );
  }

  Column _foodNameAndRestaurant() {
    return Column(
      children: [
        Row(children: [Text('Double Beef Burger', style: TextStyles.title)]),
        Row(
          children: [
            CustomSvgPicture(
              //this icon does not abber?
              path: AppAssets.reslogoSvg,
              width: 22,
              height: 22,
            ),
            Gap(11),
            Text('Just Burger', style: TextStyles.caption1),
          ],
        ),
      ],
    );
  }

  Container _counter() {
    return Container(
      width: 125,
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xff121223),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 12),
            blurRadius: 20,
            color: Color(0x0A000000),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularIcon(
            child: Icons.remove,
            childColor: AppColors.backgroundColor,
            bgColor: AppColors.greyColor,
            bgwidth: 24,
            bgheight: 24,
            onTap: () {
              if (counter > 0) {
                setState(() {
                  counter--;
                });
              }
            },
          ),
          Gap(2),
          Text(
            counter.toString(),
            style: TextStyles.subtitle.copyWith(
              color: AppColors.backgroundColor,
            ),
          ),
          Gap(2),

          CircularIcon(
            child: Icons.add,
            childColor: AppColors.backgroundColor,
            bgColor: AppColors.greyColor,
            bgwidth: 24,
            bgheight: 24,
            onTap: () {
              setState(() {
                counter++;
              });
            },
          ),
        ],
      ),
    );
  }

  Column _foodIngredients() {
    return Column(
      children: [
        Row(children: [Text('ingredients', style: TextStyles.caption1)]),
        Gap(20),
        Wrap(
          children: [
            _ingredientsIcon(AppAssets.ing1Svg),
            _ingredientsIcon(AppAssets.ing2Svg),
            _ingredientsIcon(AppAssets.ing3Svg),
            _ingredientsIcon(AppAssets.ing4Svg),
            _ingredientsIcon(AppAssets.ing5Svg),
           
            _ingredientsIcon(AppAssets.ing4Svg),
            _ingredientsIcon(AppAssets.ing5Svg),
          ],
        ),
      ],
    );
  }

  CircularIcon _ingredientsIcon(String ingrident) {
    return CircularIcon(
      child: ingrident,
      bgColor: Color(0xffFFEBE4),
      width: 24,
      height: 24,
      bgwidth: 45,
      bgheight: 45,
    );
  }

  //Funuctions
  Wrap _foodSize() {
    return Wrap(
      children: [
        Text(
          'Size:',
          style: TextStyles.caption1.copyWith(color: AppColors.lightGreyColor),
        ),
        Gap(14),
        _foodSizeIcon(10),
        Gap(10),
        _foodSizeIcon(14),
        Gap(10),
        _foodSizeIcon(16),
        Gap(20),
      ],
    );
  }

  CircularIcon _foodSizeIcon(int size) {
    return CircularIcon(
      child: '${size.toString()}”',
      isText: true,
      bgColor: choosedSize == size ? AppColors.primaryColor : Color(0xffECF0F4),
      childColor: choosedSize == size
          ? AppColors.backgroundColor
          : AppColors.blackColor,
      onTap: () => setState(() {
        choosedSize = size;
      }),
    );
  }

  Stack _foodImageAndBar(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
          child: Image.network(
            AppAssets.burger,
            width: double.infinity,
            height: 321,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(left: 24, right: 24, top: 50, child: _foodBar(context)),
      ],
    );
  }

  Row _foodBar(BuildContext context) {
    return Row(
      children: [
        CircularIcon(
          bgColor: AppColors.backgroundColor,
          onTap: () => pop(context),
        ),
        Spacer(),
        CircularIcon(
          child: Icons.favorite,
          bgColor: AppColors.backgroundColor,
          childColor: isFavourite == true
              ? AppColors.primaryColor
              : AppColors.lightGreyColor,
          onTap: () => setState(() {
            isFavourite = !isFavourite;
          }),
        ),
      ],
    );
  }
}
