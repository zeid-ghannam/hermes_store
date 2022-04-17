
import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';

import '../constants/dimensions.dart';

class RoundedButton extends StatelessWidget {
  final Color? colour;
  final VoidCallback? onPressed;
  final String title;
  final Color ? textColor;



  const RoundedButton({
    Key? key,
    this.colour,
    required this.onPressed,
    required this.title,
    this.textColor,
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
          minWidth: Dimensions.width45*6,
          height: Dimensions.height45,
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: AppFonts.normalSize,
            ),
          ),
        ),
      ),
    );
  }
}
