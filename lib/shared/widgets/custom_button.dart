
import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';

import '../constants/dimensions.dart';
import '../constants/font_family.dart';

class CustomButton extends StatelessWidget {
  final Color? colour;
  final VoidCallback? onPressed;
  final String title;
  final Color ? textColor;
  final double ? size;
  final IconData ? icon;
  final double ?fontSize;



  const CustomButton({
    Key? key,
    this.colour,
    required this.onPressed,
    required this.title,
    this.textColor,
    this.size=0,
    this.icon, this.fontSize,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height15),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(Dimensions.radius15/2),
        //this button for going to the login screen
        child: MaterialButton(
          onPressed: onPressed,
          minWidth:size==0? Dimensions.pageViewContainer270:size,
          height: Dimensions.height45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize:fontSize==0? AppFonts.secondarySize:fontSize,
                fontFamily:FontFamily.contentFont,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: icon==null?0:Dimensions.width10),
              Icon(icon,size:icon==null?0:Dimensions.iconSize24,),
            ],
          ),
        ),
      ),
    );
  }
}
