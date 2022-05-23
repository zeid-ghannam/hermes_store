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
                height: Dimensions.containerHeight155,
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/p1.jpg'),
                    radius: 70,
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
                        DropdownMenuItem<String>(
                          child: Text(
                            'كاتب',
                          ),
                        ),
                      ],
                      onChanged: (v) {},
                      hint: Text(
                        'نوع الحساب (كاتب/ناشر/دار نشر)',
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    const TextFieldWidget(
                      hintText: 'إيميل',
                      labelText: 'إيميل',
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
                        Checkbox(value: true, onChanged: (v) {}),
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
