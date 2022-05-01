import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/custom_button.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';
import 'package:hermes_store/shared/widgets/text_field_widget.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: Dimensions.pageViewMainContainer320,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/book1.jpg'),
                  fit: BoxFit.cover,

                )
              ),
            ),
            SizedBox(height: Dimensions.height40,),
           const TextFieldWidget(hintText: 'إيميل', labelText: 'إيميل',icon: Icons.email,),
            SizedBox(height: Dimensions.height20,),
            const TextFieldWidget(hintText: 'كلمة السر', labelText: 'كلمة السر',icon: Icons.remove_red_eye_rounded,),
            SizedBox(height: Dimensions.height20,),
            SizedBox(
                width: Dimensions.buttonWidthContainer280,
                child: CustomButton(onPressed: (){}, title: 'تسجيل الدخول',colour: AppColors.buttonColor,),),
            Row(
                children: const [
                  Expanded(
                      child: Divider(
                        indent: 20,
                        endIndent: 10,
                        thickness: 3,
                        color: Colors.red,
                      )
                  ),

                  Text("أو"),

                  Expanded(
                      child: Divider(
                        indent: 10,
                        endIndent: 20,
                        thickness: 3,
                        color: Colors.red,
                      )
                  ),
                ]
            ),
            SizedBox(height: Dimensions.height20,),
             SecondaryText(text:'نسيت كلمة السر؟',color: AppColors.activeTextColor,),
             SizedBox(height: Dimensions.height30,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SecondaryText(text: 'ليس لدي حساب؟',color: AppColors.activeTextColor,),
                 TextButton(onPressed: (){}, child: SecondaryText(text: 'أنشئ حساب',color:Colors.blue),),
               ],
             )

          ],
        ),
      ),
    );
  }
}
