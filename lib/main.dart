import 'package:flutter/material.dart';

import 'package:food_delivery_app/core/features/Profile/profile_screen.dart';
import 'package:food_delivery_app/core/features/orders/my_orders.dart';
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
      home: MyOrders(),
    );
  }
}
