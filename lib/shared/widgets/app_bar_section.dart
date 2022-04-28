
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';
import '../constants/app_colors.dart';
import '../constants/app_fonts.dart';
import '../constants/dimensions.dart';

class AppBarSection extends StatelessWidget {
  final String ?  text;
  const AppBarSection({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         IconButton(onPressed: (){}, icon:  Icon(Icons.menu,size: Dimensions.iconSize28,),),
          SecondaryText(text: text==null?'':text!,color: AppColors.selectedTextColor,size: AppFonts.normalSize,),
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,size:Dimensions.iconSize24,),)
        ],
      ),
    );
  }
}