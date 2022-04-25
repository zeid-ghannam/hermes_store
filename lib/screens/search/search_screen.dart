import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/widgets/app_bar_section.dart';
import 'package:hermes_store/shared/widgets/book_item.dart';
import 'package:hermes_store/shared/widgets/book_list.dart';
import 'package:hermes_store/shared/widgets/heading_text.dart';
import 'package:hermes_store/shared/widgets/nested_scroll_view.dart';
import 'package:hermes_store/shared/widgets/search_bar.dart';

import '../../shared/constants/dimensions.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<dynamic> books = [
    {
      "id": 1,
      "title": "فن الامبالاة",
      "author": "زيد غنام",
      "translator": "المقداد علي",
      "language": "عربي سوري",
      "cover": "assets/images/book1.jpg",
      "number_of_pages": 181,
      "book_category": [
        "رومنسي",
        "أكشن",
        "مغامرة",
        "كوميدي",
        "خيال علمي",
      ],
      "price": 30.04
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: Dimensions.height20,
          // ),
          // //this is the app bar search section in this screen
          // const AppBarSection(text: 'بحث'),
          // //the search text field and filter
          // Container(
          //   margin: EdgeInsets.all(Dimensions.height20),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       SizedBox(
          //         width: Dimensions.pageViewMainContainer320,
          //         child: const SearchBar(),
          //       ),
          //       Icon(
          //         Icons.tune,
          //         color: AppColors.activeColor,
          //         size: Dimensions.searchIconSize,
          //       ),
          //     ],
          //   ),
          // ),
          // // this is the result screen
          // Padding(
          //   padding: EdgeInsets.only(right: Dimensions.width20),
          //   child: HeadingText(text: 'نتائج مطابقة تماما'),
          // ),
          // BookItem(
          //   i: 0,
          //   bookTitle: books[0]['title'],
          //   bookImage: books[0]['cover'],
          //   bookAuthor: books[0]['author'],
          //   bookSummary: '',
          // ),
          // SizedBox(height: Dimensions.height20,),
          // Padding(
          //   padding: EdgeInsets.only(right: Dimensions.width20),
          //   child: HeadingText(text: 'نتائج مطابقة تماما'),
          // ),
          // SizedBox(height: Dimensions.height10,),
          // Expanded(child: BookItemList(),),
          Expanded(child: NestedScrollViewWidget())
        ],
      ),
    );
  }
}
