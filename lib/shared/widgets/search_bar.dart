import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/dimensions.dart';
import '../constants/app_colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
            top: Dimensions.height10, bottom: Dimensions.height10 / 2),
        hintTextDirection: TextDirection.rtl,
        hintText: 'بحث',
        hintStyle: TextStyle(fontSize: 20, color: AppColors.hintColor),
        prefixIcon:  Icon(
          Icons.search,
          color: AppColors.hintColor,
          size: Dimensions.searchIconSize,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radius15 / 2),
          ),
        ),
        //this is for the enable border
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.searchBarBorderColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radius15 / 2),
          ),
        ),
        //this is for the focused border
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: AppColors.searchBarBorderColor, width: 2.0),
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radius15 / 2),
          ),
        ),
      ),
    );
  }
}
