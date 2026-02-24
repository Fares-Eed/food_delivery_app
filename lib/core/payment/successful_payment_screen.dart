import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/cart/widgets/custom_button.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:gap/gap.dart';

class SuccessfulPaymentScreen extends StatelessWidget {
  const SuccessfulPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 228,
              height: 207,
              decoration: BoxDecoration(
                color: Color(0xff98A8B8),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Image.asset(AppAssets.paymentMethod, fit: BoxFit.contain),
            ),
          ),
          Gap(32),
          Text(
            "Congratulations!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: "sen",
              color: Color(0xff111A2C),
            ),
          ),
          Gap(16),

          Column(
            children: [
              Text(
                "You successfully made a payment",
                style: TextStyle(
                  fontFamily: "sen",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff525C67),
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "enjoy our service!",
                style: TextStyle(
                  fontFamily: "sen",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff525C67),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: EdgeInsets.all(16),
        child: customButton(
          bgColor: Color(0xffFF7622),
          text: "Track order",
          fontsize: 16,
          fontweight: FontWeight.w700,
          onPressed: () {},
        ),
      ),
    );
  }
}
