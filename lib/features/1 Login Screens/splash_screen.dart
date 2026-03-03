import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'login_screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  
 State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override

 void initState(){
 super.initState();


Future.delayed(Duration(seconds: 3), (){
  if (!mounted) return;
Navigator.pushReplacement (context,  MaterialPageRoute(builder:(context) => LoginScreen() ,));

 });


} 






@override

  Widget build(BuildContext context) {
    return  Scaffold(
backgroundColor: AppColors.white2,      
body: Stack (
  children: [
Positioned(
  top: 0,
  left: 0,
  
    child: SvgPicture.asset(AppAssets.greyintro)),
Positioned(
  bottom: 0,
  right: 0,
    child: SvgPicture.asset(AppAssets.orangeintro)),

Center(
child: SvgPicture.asset(AppAssets.logoimage)

),
  ],
),
);
}}