import 'package:flutter/material.dart';

import '../../shared/constants/app_colors.dart';
import '../../shared/constants/dimensions.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/secondary_text.dart';
import '../../shared/widgets/text_field_widget.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Dimensions.screenHeight);
    return Scaffold(
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),

        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: Dimensions.pageViewMainContainer320,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/book1.jpg'),
                fit: BoxFit.cover,
              )),
            ),
            SizedBox(
              height: Dimensions.height70,
            ),

            const TextFieldWidget(
              hintText: 'إيميل',
              labelText: 'إيميل',
              icon: Icons.email,
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            SizedBox(
              width: Dimensions.buttonWidthContainer280,
              child: CustomButton(
                onPressed: () {},
                title: 'إرسال',
                colour: AppColors.buttonColor,
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
          ],
        ),
      ),
    );
  }
}