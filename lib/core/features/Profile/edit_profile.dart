import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_assets.dart';
import 'package:food_delivery_app/core/features/Profile/widgets/custom_form_field.dart';
import 'package:food_delivery_app/core/features/Profile/widgets/image_container.dart';
import 'package:food_delivery_app/core/features/Profile/widgets/main_button.dart';
import 'package:food_delivery_app/core/functions/navigations.dart';
import 'package:food_delivery_app/core/styles/app_colors.dart';
import 'package:food_delivery_app/core/styles/text_styles.dart';
import 'package:food_delivery_app/core/widgets/filled_icon_button.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String? path;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: FilledIconButton(
            onPressed: () {
              pop(context);
            },
            iconData: Icon(
              Icons.arrow_back_ios_new,
              size: 15,
              color: AppColors.blackColor,
            ),
            fillcolor: AppColors.lightGreyColor1,
          ),
        ),
        title: Text(
          "Edit Profile",
          style: TextStyles.subtitle.copyWith(color: AppColors.blackColor),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                Center(
                  child: SizedBox(
                    height: 130,
                    width: 130,
                    child: Stack(
                      children: [
                        ImageContainer(
                          height: 130,
                          width: 130,
                          image: (path!=null)?Image.file(fit: BoxFit.cover,File(path!)):Image.asset(fit: BoxFit.cover,AppAssets.pizzahut),
                        ),

                        Align(
                          alignment: Alignment.bottomRight,
                          child: FilledIconButton(
                            onPressed: () async {
                              var image = await ImagePicker().pickImage(
                                source: ImageSource.camera,
                              );
                              if (image != null) {
                                setState(() {
                                  path = image.path;
                                });
                              }
                            },
                            iconData: const Icon(
                              Icons.edit_outlined,
                              color: Colors.white,
                            ),
                            fillcolor: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 18),
                CustomFormField(
                  title: "Full Name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24),
                CustomFormField(
                  title: "Email",
                  keyboardtype: 1,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (value.contains('@') == false) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24),
                CustomFormField(
                  title: "Phone Number",
                  keyboardtype: 2,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    if (value.length != 11) {
                      return 'Please enter a valid phone number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24),
                CustomFormField(
                  title: "Bio",
                  maxlines: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Bio';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 32),
                MainButton(
                  title: "Save",
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      pop(context);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
