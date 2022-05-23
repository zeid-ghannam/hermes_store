import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/app_bar_section.dart';
import 'package:hermes_store/shared/widgets/custom_button.dart';
import 'package:hermes_store/shared/widgets/text_field_widget.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarSection(
              leftVisible: true,
              rightVisible: false,
            ),
            Container(
              width: double.maxFinite,
              height: Dimensions.pageViewMainContainer290,
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
                  const TextFieldWidget(
                    hintText: 'أدخل كلمة السر القديمة',
                    labelText: 'كلمة السر',
                    icon: Icons.remove_red_eye_rounded,
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  const TextFieldWidget(
                    hintText: 'كلمة السر جديدة',
                    labelText: 'كلمة السر',
                    icon: Icons.remove_red_eye_rounded,
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  const TextFieldWidget(
                    hintText: 'تأكيد كلمة السر',
                    labelText: ' كلمة السر',
                    icon: Icons.remove_red_eye_rounded,
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  SizedBox(
                    width: Dimensions.buttonWidthContainer320,
                    child: CustomButton(
                      onPressed: () {},
                      title: 'تغيير',
                      colour: AppColors.buttonColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
