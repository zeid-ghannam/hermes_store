import 'package:flutter/material.dart';

import '../../shared/constants/app_colors.dart';
import '../../shared/constants/dimensions.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/secondary_text.dart';
import '../../shared/widgets/text_field_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
         physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: Dimensions.screenWidth,
              height:Dimensions.buttonWidthContainer280,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/book1.jpg'),
                fit: BoxFit.cover,
              )),
            ),
            SizedBox(
              height: Dimensions.height40,
            ),
            const TextFieldWidget(
              hintText: 'اسم المستخدم',
              labelText: 'اسم المستخدم',
              icon: Icons.person,
            ),
            SizedBox(
              height: Dimensions.height20,
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
              height: Dimensions.height45,
            ),
            SizedBox(
              width: Dimensions.buttonWidthContainer280,
              child: CustomButton(
                onPressed: () {},
                title: 'إنشاء حساب',
                colour: AppColors.buttonColor,
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SecondaryText(
                  text: 'لدي حساب؟',
                  color: AppColors.activeColor,
                ),
                TextButton(
                  onPressed: () {},
                  child: SecondaryText(text: 'سجل دخول', color: Colors.blue),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
