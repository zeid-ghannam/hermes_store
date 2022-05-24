import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes_store/screens/auth/register/publisher_registration_screen.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/widgets/custom_button.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

import '../../shared/constants/dimensions.dart';
import '../auth/register/user_registration_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: Dimensions.pageViewMainContainer320,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: Dimensions.radius70,
                  backgroundImage: const AssetImage('assets/images/book1.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            SecondaryText(
              text: 'هل تستمتع بقراءة الكتب ؟',
              color: AppColors.activeTextColor,
              size: AppFonts.normalSize,
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            SizedBox(
              width: Dimensions.buttonWidthContainer320,
              height: Dimensions.buttonHeightContainer60,
              child: CustomButton(
                onPressed: () {
                  Get.to(
                    () => UserRegistrationScreen(),
                  );
                },
                title: 'سجل كقارئ',
                colour: AppColors.buttonColor,
              ),
            ),
            SizedBox(
              height: Dimensions.height100,
            ),
            SecondaryText(
              text: 'هل أنت كاتب مستقل, مترجم أو ناشر ؟',
              color: AppColors.activeTextColor,
              size: AppFonts.normalSize,
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            SizedBox(
              width: Dimensions.buttonWidthContainer320,
              height: Dimensions.buttonHeightContainer60,
              child: Center(
                child: CustomButton(
                  onPressed: () {
                    Get.to(
                      () => PublisherRegistrationScreen(),
                    );
                  },
                  title: 'انضم إلينا',
                  colour: AppColors.buttonColor,
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height100,
            ),
            InkWell(
              onTap: () {},
              child: SecondaryText(
                text: 'سياسة الخصوصية',
                color: AppColors.textButtonColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
