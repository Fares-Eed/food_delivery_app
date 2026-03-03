
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import '../../core/styles/text_styles.dart';
import 'register_screen.dart'; 
import 'forget_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isPasswordHidden = true;
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
      Text('Log In', style: TextStyles.size30,),
        SizedBox(height: 10),


      Text('Please sign in to your existing account',style: TextStyles.button.copyWith(color: AppColors.white2), ),



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

Text('Email', style: TextStyles.size13.copyWith(color:AppColors.black2)),
        SizedBox(height: 10),

TextFormField(

  decoration: InputDecoration(
fillColor: AppColors.lightgrey2,
filled: true,

hintText: 'example@gmail.com',
hintStyle: TextStyles.button.copyWith(color: AppColors.grey2),

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
Text('Password', style: TextStyles.size13.copyWith(color: AppColors.black2)),
        SizedBox(height: 10),

TextFormField(

  obscureText: isPasswordHidden,
  decoration: InputDecoration(
    fillColor: AppColors.lightgrey2,
    filled: true,
    hintText: '********',
    hintStyle: TextStyles.caption1.copyWith(color: AppColors.grey2),

    suffixIcon: IconButton(
      icon: Icon(
        isPasswordHidden
            ? Icons.visibility_off_outlined
            : Icons.visibility_outlined,
        color: Colors.grey,
      ),
      onPressed: () {
        setState(() {
          isPasswordHidden = !isPasswordHidden;
        });
      },
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
    ),
  ),
),


    SizedBox(height: 18),
    Row(
      children: [
        SvgPicture.asset(AppAssets.rectangleicon),

  SizedBox(width: 8),
 Text('Remember me',style: TextStyles.size13.copyWith(color: AppColors.grey2)),

Spacer(),
TextButton(onPressed: () {


Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ForgetScreen(),
      ),
    );

} ,
 child: Text( 'Forgot Password', style: TextStyles.caption1.copyWith(color: AppColors.primaryColor)))



      ],
    ),

    SizedBox(
  width: double.infinity,
  height: 56,
  child: Container(
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(16),
    ),
    alignment: Alignment.center,
    child: Text('LOG IN',style: TextStyles.button.copyWith(color: AppColors.white2),)

  )
    ),

SizedBox(height: 22),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Don’t have an account?',style: TextStyles.button.copyWith(color: AppColors.darkgrey),),

    TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero)
      ,onPressed:(){ 
      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterScreen(),
      ),
    );
    },

    child: Text('Sign Up',style: TextStyles.button.copyWith(color: AppColors.primaryColor),
    ))
  ],
),
  SizedBox(height: 20),

Center(
  child: Text('Or',style: TextStyles.button.copyWith(color: AppColors.darkgrey,),
  ),
),
 SizedBox(height: 20),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
SvgPicture.asset(AppAssets.facebookicon),
SvgPicture.asset(AppAssets.twittericon),
SvgPicture.asset(AppAssets.icloudicon),

  ]
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