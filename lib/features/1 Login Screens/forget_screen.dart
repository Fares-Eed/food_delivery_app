
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import '../../core/styles/text_styles.dart';
import 'verfication_screen.dart'; 


class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
             color: AppColors.navyblue,
            borderRadius: BorderRadius.only(
  
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
              ),

            ),
       child: Stack(
       children: [
        Positioned(
        top: 0,
        left: 0,
        child: SvgPicture.asset(AppAssets.greyintro),),

     
      
     Center(
      child: Column(
        children: [
        SizedBox(height: 85),
      Text('Forgot Password', style: TextStyles.size30),
        SizedBox(height: 10),


      Text('Please sign in to your existing account',style: TextStyles.button, ),



                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

    Expanded (
      flex: 3,
    child: Container(
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(
  color: Colors.white,
),


child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


SizedBox(height: 24),

Text('Email', style: TextStyles.size13.copyWith(color:AppColors.black2)),
        SizedBox(height: 10),
TextFormField(
  decoration: InputDecoration(
fillColor: AppColors.lightgrey2,
filled: true,

hintText: 'example@gmail.com',
hintStyle: TextStyles.caption1.copyWith(color: AppColors.grey2),

enabledBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(14),
  borderSide: BorderSide.none,
),

focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(14),
    borderSide: BorderSide.none,
),
 


)
),

SizedBox(height: 24),

    SizedBox(
  width: double.infinity,
  height: 56,
  child: Container(
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(16),
    ),
    alignment: Alignment.center,
    child: TextButton( onPressed: () {
      Navigator.push(
     context,
      MaterialPageRoute(
        builder: (context) => const VerficationScreen(),
      )
    );
    },
    
    child:Text('SEND CODE',style: TextStyles.button.copyWith(color: AppColors.white2),)
    )
  )
    ),

      ]
)  
),

         )
            ],
      ),
    );
  }
}