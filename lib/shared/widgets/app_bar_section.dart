import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/dimensions.dart';

class AppBarSection extends StatelessWidget {
  bool? visible;
  AppBarSection({
    Key? key,
    this.visible = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(left: Dimensions.width5, right: Dimensions.width10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: Dimensions.iconSize28,
            ),
          ),
          Container(
              child: visible == true
                  ? IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        size: Dimensions.iconSize24,
                      ),
                    )
                  : null),
        ],
      ),
    );
  }
}
