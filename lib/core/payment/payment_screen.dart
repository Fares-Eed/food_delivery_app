import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/cart/widgets/custom_button.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/payment/paymentMethod.dart';
import 'package:food_delivery_app/core/payment/successful_payment_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xffECF0F4),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                    color: Color(0xff181C2E),
                  ),
                ),
                SizedBox(width: 11),
                Text(
                  "Payment",
                  style: TextStyle(
                    fontFamily: "sen",
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Color(0xff181C2E),
                  ),
                ),
              ],
            ),
            SizedBox(height: 31),

            SizedBox(height: 95, child: paymentmethod()),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(25),
              height: 257,
              width: 327,
              decoration: BoxDecoration(
                color: Color(0xffF7F8F9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Image.asset(AppAssets.paymentMethod),
                  SizedBox(height: 13),
                  Text(
                    "No ${methods[selectedindex].title} added",
                    style: TextStyle(
                      fontFamily: "sen",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff32343E),
                    ),
                  ),
                  SizedBox(height: 6),
                  Column(
                    children: [
                      Text(
                        "You can add a ${methods[selectedindex].title} and",
                        style: TextStyle(
                          fontFamily: "sen",
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xff2D2D2D),
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "save it for later",
                        style: TextStyle(
                          fontFamily: "sen",
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xff2D2D2D),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            customButton(
              bgColor: Color(0xffF0F5FA),
              text: '+  ADD NEW',
              width: 327,
              height: 62,
              radius: 10,
              fontsize: 14,
              fontweight: FontWeight.w700,
              textcolor: Color(0xffFF7622),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "TOTAL:",
                  style: TextStyle(
                    fontFamily: "sen",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xffA0A5BA),
                  ),
                ),

                SizedBox(width: 10),

                Text(
                  "\$96",
                  style: TextStyle(
                    fontFamily: "sen",
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    color: Color(0xff181C2E),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            customButton(
              onPressed: () {
                pushTo(context, SuccessfulPaymentScreen());
              },
              bgColor: Color(0xffFF7622),
              text: "Pay & Confirm",
              fontweight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }

  ListView paymentmethod() {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: methods.length,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(width: 16);
      },
      itemBuilder: (context, index) {
        final isSelected = selectedindex == index;
        return InkWell(
          onTap: () {
            setState(() {
              selectedindex = index;
            });
          },
          child: Column(
            children: [
              Container(
                width: 85,
                height: 72,
                decoration: BoxDecoration(
                  color: Color(0xffF0F5FA),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isSelected ? (Colors.orange) : Colors.transparent,
                  ),
                ),

                child: Image.asset(methods[index].image ?? ""),
              ),

              Text(
                methods[index].title ?? "",
                style: TextStyle(
                  fontFamily: "sen",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff464E57),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
