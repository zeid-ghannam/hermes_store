import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes_store/controller/cart_controller.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/widgets/heading_text.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

import '../constants/dimensions.dart';

class PaySliderWidget extends StatelessWidget {
  const PaySliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
        init: CartController(),
        builder: (controller) => Container(
              height: Dimensions.cartPayHeight140 + 15,
              child: PageView.builder(
                  controller: controller.pgController,
                  itemCount: 5,
                  itemBuilder: (Context, int) {
                    return _buildPageItem(int);
                  }),
            ));
  }
}

Widget _buildPageItem(int index) {
  return Stack(
    children: [
      Container(
        padding: EdgeInsets.only(
            top: Dimensions.height10,
            left: Dimensions.width10,
            right: Dimensions.width10),
        height: Dimensions.containerHeight200,
        margin: EdgeInsets.only(
          left: Dimensions.width10,
          right: Dimensions.width10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius15),
          color: Colors.blueGrey,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeadingText(
              text: 'VISA CARD',
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            RichText(
              textDirection: TextDirection.ltr,
              text: TextSpan(
                text: '4005',
                style: TextStyle(fontSize: AppFonts.bigSize),
                children: [
                  TextSpan(
                    text: '  ****  ****  ',
                    style: TextStyle(fontSize: AppFonts.headingSize),
                  ),
                  TextSpan(
                    text: '9524',
                    style: TextStyle(fontSize: AppFonts.bigSize),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Row(
              textDirection: TextDirection.ltr,
              children: [
                Column(
                  children: [
                    SecondaryText(text: 'VALID'),
                    SecondaryText(text: 'FROM'),
                  ],
                ),
                SizedBox(
                  width: Dimensions.width10,
                ),
                HeadingText(text: '03/12'),
                SizedBox(
                  width: Dimensions.width20,
                ),
                Column(
                  children: [
                    SecondaryText(text: 'VALID'),
                    SecondaryText(text: 'THRU'),
                  ],
                ),
                SizedBox(
                  width: Dimensions.width10,
                ),
                HeadingText(text: '03/12'),
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: Dimensions.width10),
        child: Transform.scale(
          scale: 1.5,
          child: Checkbox(
            checkColor: Colors.white,
            focusColor: Colors.green,
            shape: const CircleBorder(),
            side: BorderSide(
              style: BorderStyle.solid,
            ),
            value: (false),
            onChanged: (v) {},
          ),
        ),
      ),
      Positioned(
        bottom: Dimensions.height10,
        right: Dimensions.width20,
        child: HeadingText(
          text: 'PayPal',
        ),
      ),
    ],
  );
}
