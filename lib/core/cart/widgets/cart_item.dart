import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.image, required this.title, required this.price, required this.quantity});
  final String image;
  final String title;
  final String price;
  final String quantity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 117,
          width: 136,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade800,
          ),
          child: Image.asset(image),
        ),
        SizedBox(width: 20),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "sen",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    height: 27,
                    width: 27,
                    decoration: BoxDecoration(
                      color: Color(0xffE04444),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.close, color: Colors.white, size: 17),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                price,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "sen",
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "14\"",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                      fontFamily: "sen",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        radius: 11,
                        child: Icon(
                          size: 13,
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        quantity,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "sen",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 10),

                      CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        radius: 11,
                        child: Icon(size: 13, Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
