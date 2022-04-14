import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';



class SecondaryText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  TextAlign textAlign;

  SecondaryText({
    Key? key,
    this.color = const Color(0xffccc7c5),
    required this.text,
    this.size = 0.0,
    this.height=1.2,
    this.textAlign =TextAlign.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontSize: size==0?AppFonts.secondarySize:size,
          height: height,
          fontWeight: FontWeight.w700
      ),
    );
  }
}
