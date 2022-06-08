import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/app_bar_section.dart';
import 'package:hermes_store/shared/widgets/custom_button_with_icon.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

import '../../shared/widgets/pay_slider_widget.dart';
import 'cart_book_item.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  List<Widget> product = [
    CartBookItem(),
    CartBookItem(),
    CartBookItem(),
    CartBookItem(),
    CartBookItem(),
    CartBookItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.loose,
        children: [
          CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    AppBarSection(),
                    Flexible(
                      child: Column(
                        children: product,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: Dimensions.height100,
                        top: Dimensions.width20,
                      ),
                      child: PaySliderWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(
              Dimensions.width10,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Dimensions.buttonHeightContainer60,
                    width: Dimensions.buttonWidthContainer240,
                    child: CustomButtonWithIcon(
                      icon: Icons.check,
                      title: 'شراء',
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: Dimensions.buttonHeightContainer60,
                    width: Dimensions.width100,
                    padding: EdgeInsets.all(Dimensions.height10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(Dimensions.radius8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SecondaryText(
                          text: 'المجموع :',
                        ),
                        SecondaryText(text: '1000 ليرة ')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.height10,
          )
        ],
      ),
    );
  }
}
