import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/features/Profile/widgets/Custom_choice_chip.dart';
import 'package:food_delivery_app/features/Profile%20&%20orders/Profile/widgets/custom_form_field.dart';
import 'package:food_delivery_app/features/Profile%20&%20orders/Profile/widgets/main_button.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';

import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/filled_icon_button.dart';

class EditAddress extends StatefulWidget {
  const EditAddress({super.key});

  @override
  State<EditAddress> createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  String selectedValue = 'Home';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffD0D9E1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      AppAssets.location,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.4,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 50,
                      left: 24,
                      child: FilledIconButton(
                        onPressed: () {
                          pop(context);
                        },
                        iconData: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                        fillcolor: Color(0xff32343E),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomFormField(
                      title: "Address",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your address";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: CustomFormField(
                            title: "Street",
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your Street";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: CustomFormField(
                            title: "Post Code",
                            keyboardtype: 2,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your Post Code";
                              }
                               else if(value.length!=6){
                          return " Enter a valid Code";
                        }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    CustomFormField(
                      title: "Appartment",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your Appartment number";
                        }
                       
                        return null;
                      },
                      keyboardtype: 2,
                    ),
                    SizedBox(height: 24),
                    Text("Label as", style: TextStyles.caption1),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CustomChoiceChip(
                          label: "Home",
                          selectedValue: selectedValue,
                          onSelected: (value) {
                            setState(() => selectedValue = value);
                          },
                        ),
                        CustomChoiceChip(
                          label: "Work",
                          selectedValue: selectedValue,
                          onSelected: (value) {
                            setState(() => selectedValue = value);
                          },
                        ),
                        CustomChoiceChip(
                          label: "Other",
                          selectedValue: selectedValue,
                          onSelected: (value) {
                            setState(() => selectedValue = value);
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    MainButton(
                      title: "Save Location",
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          pop(context);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
