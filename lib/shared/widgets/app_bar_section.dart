
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';
import '../constants/app_colors.dart';
import '../constants/app_fonts.dart';
import '../constants/dimensions.dart';

class AppBarSection extends StatelessWidget {
  final String text;
  const AppBarSection({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          SecondaryText(text: text,color: AppColors.selectedTextColor,size: AppFonts.normalSize,),
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}