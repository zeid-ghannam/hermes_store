import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/constants/app_colors.dart';
import '../../shared/constants/app_fonts.dart';
import '../../shared/constants/dimensions.dart';
import '../../shared/widgets/app_bar_section.dart';
import '../../shared/widgets/secondary_text.dart';

class MyInformation extends StatelessWidget {
  const MyInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Dimensions.height40,
          ),
          AppBarSection(
            leftVisible: true,
          ),
          const InformationPart(
            title: 'البريد الإلكتروني',
            content: 'zeidghannam@gmail.com',
          ),
          const InformationPart(
            title: 'رقم الهاتف',
            content: '09920992099',
          ),
          const InformationPart(
            title: 'العنوان',
            content: '09920992099',
          ),
          const InformationPart(
            title: 'نوع الحساب',
            content: '09920992099',
          ),
        ],
      ),
    );
  }
}

class InformationPart extends StatelessWidget {
  final String title;
  final String content;
  const InformationPart({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: Dimensions.height10,
          left: Dimensions.width10,
          right: Dimensions.width10),
      padding: EdgeInsets.only(
          left: Dimensions.width10,
          right: Dimensions.width10,
          top: Dimensions.height20),
      height: Dimensions.containerHeight120,
      width: Dimensions.screenWidth,
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(Dimensions.radius8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SecondaryText(
            text: title,
            color: AppColors.activeTextColor,
            size: AppFonts.headingSize,
          ),
          SizedBox(
            height: Dimensions.height40,
          ),
          SecondaryText(
            text: content,
            color: AppColors.activeTextColor,
          ),
        ],
      ),
    );
  }
}
