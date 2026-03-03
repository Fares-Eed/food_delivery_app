
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import '../../core/styles/text_styles.dart';
import 'package:pinput/pinput.dart';


class VerficationScreen extends StatefulWidget {
  const  VerficationScreen({super.key});

  @override
  State<VerficationScreen> createState() => _VerficationScreenState();
}

class _VerficationScreenState extends State<VerficationScreen> {
  

  @override
  Widget build(BuildContext context) {
final defaultPinTheme = PinTheme(

  width: 56,
  height: 56,
  textStyle: TextStyles.size13.copyWith(color: AppColors.black2),
  decoration: BoxDecoration(
    color: AppColors.lightgrey2,
    borderRadius: BorderRadius.circular(12),
  
)
  );


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
      Text('Verification', style: TextStyles.size30),
        SizedBox(height: 10),


      Text('We have sent a code to your email',style: TextStyles.button.copyWith(color: AppColors.white2), ),



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
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,

  children: [
    Text('CODE', style: TextStyles.size13.copyWith(color: AppColors.black2)), 

    Text('Resend in.50sec',style: TextStyles.caption1.copyWith(color: AppColors.black2)),
  ],
),


  //pinput


Directionality(
  textDirection: TextDirection.ltr,
  child: Pinput(
    length: 4, 
    defaultPinTheme: defaultPinTheme,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,

  ),
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
    child:Text('Verify',style: TextStyles.button.copyWith(color: AppColors.white2),)
    )
  )
          

        ]
)  
),

         )
            ],
    
      ),
  

  );
  }
}