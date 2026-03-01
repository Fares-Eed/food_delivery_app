import 'package:flutter/material.dart';

import 'package:food_delivery_app/features/Profile%20&%20orders/Profile/profile_screen.dart';
import 'package:food_delivery_app/features/Profile%20&%20orders/orders/my_orders.dart';
import 'package:food_delivery_app/core/styles/themes.dart';
import 'package:food_delivery_app/features/2%20Home%20Features/Home/page/home_screen.dart';


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
      home: ProfileScreen(),
    );
  }
}
