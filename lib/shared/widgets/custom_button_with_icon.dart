import 'package:flutter/material.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

import '../constants/app_colors.dart';
import '../constants/dimensions.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onPressed;
  const CustomButtonWithIcon({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.0,
      color: AppColors.buttonColor,
      borderRadius: BorderRadius.circular(Dimensions.radius8),
      child: MaterialButton(
        onPressed: onPressed,
        height: Dimensions.buttonHeightContainer60,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SecondaryText(
                text: title,
              ),
              Icon(
                icon,
                size: Dimensions.iconSize24,
                color: AppColors.iconButtonColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
