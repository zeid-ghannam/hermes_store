import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes_store/screens/auth/login/login_screen.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';

import '../../../../shared/constants/app_colors.dart';
import '../../../../shared/constants/dimensions.dart';
import '../../../../shared/widgets/app_bar_section.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/secondary_text.dart';
import '../../../../shared/widgets/text_field_widget.dart';

class PublisherRegistrationScreen extends StatelessWidget {
  const PublisherRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              AppBarSection(
                leftVisible: true,
                rightVisible: false,
              ),
              Container(
                width: Dimensions.screenWidth,
                height: Dimensions.containerHeight155 - 60,
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/p1.jpg'),
                    radius: Dimensions.radius70,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: Dimensions.width20,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: Dimensions.height40,
                    ),
                    const TextFieldWidget(
                      hintText: 'اسم الكاتب/المترجم/دار النشر',
                      labelText: 'الإسم',
                      icon: Icons.person,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    DropdownButtonFormField(
                      items: const [
                        DropdownMenuItem(
                          child: Text("دار نشر"),
                          value: "دار نشر",
                        ),
                        DropdownMenuItem(
                          child: Text("ناشر"),
                          value: "ناشر",
                        ),
                        DropdownMenuItem(
                          child: Text("كاتب"),
                          value: "كاتب",
                        ),
                      ],
                      onChanged: (v) {},
                      hint: SecondaryText(
                        text: 'كاتب/المترجم/دار النشر',
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: Dimensions.width20,
                          vertical: Dimensions.height15,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.borderColor,
                            width: 0.1,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              Dimensions.radius8,
                            ),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.lightBlueAccent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              Dimensions.radius8,
                            ),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.lightBlueAccent,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              Dimensions.radius8,
                            ),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              Dimensions.radius8,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    const TextFieldWidget(
                      hintText: 'أدخل البريد الإلكتروني',
                      labelText: 'البريد الإلكتروني',
                      icon: Icons.email,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    const TextFieldWidget(
                      hintText: 'كلمة السر',
                      labelText: 'كلمة السر',
                      icon: Icons.remove_red_eye_rounded,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    const TextFieldWidget(
                      hintText: 'تأكيد كلمة السر',
                      labelText: 'تأكيد كلمة السر',
                      icon: Icons.remove_red_eye_rounded,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(value: false, onChanged: (v) {}),
                        SizedBox(
                          width: Dimensions.width5,
                        ),
                        SecondaryText(
                            text: 'أنا أوافق على',
                            fontWeight: FontWeight.w700,
                            color: Colors.black54),
                        TextButton(
                            onPressed: () {},
                            child: SecondaryText(
                              text: 'الشروط و الأحكام',
                              color: AppColors.textButtonColor,
                              fontWeight: FontWeight.w800,
                              size: AppFonts.normalSize,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    SizedBox(
                      width: Dimensions.buttonWidthContainer320,
                      child: CustomButton(
                        onPressed: () {},
                        title: 'إنشاء حساب',
                        colour: AppColors.buttonColor,
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SecondaryText(
                          text: 'لدي حساب ؟',
                          color: AppColors.activeTextColor,
                          size: AppFonts.normalSize,
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(
                              () => LogInScreen(),
                            );
                          },
                          child: SecondaryText(
                              text: 'سجل دخول',
                              color: AppColors.textButtonColor),
                        ),
                      ],
                    )
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
