import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/3%20Cart%20&%20Payment%20Features/cart/widgets/cart_item.dart';
import 'package:food_delivery_app/features/3%20Cart%20&%20Payment%20Features/cart/widgets/custom_button.dart';
import 'package:food_delivery_app/features/3%20Cart%20&%20Payment%20Features/cart/widgets/custom_text_field.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cartBg,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: AppColors.cartBg,
            height: 502,
            child: Column(
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 30, 33, 50),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "sen",
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "DONE",
                      style: TextStyle(
                        color: Color(0xff059C6A),
                        fontFamily: "sen",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff059C6A),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CartItem(
                  image: AppAssets.pizza,
                  title: "Pizza Colozone \nEuropean",
                  price: "\$64",
                  quantity: "2",
                ),
                SizedBox(height: 32),
                CartItem(
                  image: AppAssets.pizza,
                  title: "Pizza Colozone \nEuropean",
                  price: "\$32",
                  quantity: "1",
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "DELIVERY ADDRESS",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "sen",
                          fontWeight: FontWeight.w400,
                          color: Color(0xffA0A5BA),
                        ),
                      ),
                      Text(
                        "EDIT",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          fontFamily: "sen",
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFF7622),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    filledColor: Color(0xFFF2F3F7),
                    label: "2118 Thornridge Cir. Syracuse",
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        "TOTAL",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "sen",
                          fontWeight: FontWeight.w400,
                          color: Color(0xffA0A5BA),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "\$96",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "sen",
                          fontWeight: FontWeight.w400,
                          color: Color(0xff181C2E),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Breakdown",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "sen",
                                fontWeight: FontWeight.w400,
                                color: Color(0xffFF7622),
                              ),
                            ),
                          ),
                          Image.asset(
                            AppAssets.cartBreakdownIcon,
                            color: Color(0xff181C2E),
                            height: 10,
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  customButton(
                    bgColor: Color(0xffFF7622),
                    text: "Place order",
                    height: 50,
                    width: 375,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
