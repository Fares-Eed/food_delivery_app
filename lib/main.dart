import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/cart/cartScreen.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/payment/payment_screen.dart';
import 'package:food_delivery_app/core/styles/themes.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  AppThemes.lightTheme,
      home: PaymentScreen()
    );
  }
}
