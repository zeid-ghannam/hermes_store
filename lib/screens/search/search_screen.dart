import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/search_bar.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

import '../../models/book/book-list.dart';
import '../../shared/widgets/app_bar_section.dart';
import '../../shared/widgets/book_list.dart';
import '../../shared/widgets/tag.dart';

class SearchScreen extends StatelessWidget {
  final bool result = false;
  bool advancedSearch = true;

  void advanceSearch() {
    if (advancedSearch == false) {
      advancedSearch = true;
      print(advancedSearch);
    } else {
      advancedSearch = false;
      print(advancedSearch);
    }
  }

  String text;
  SearchScreen({
    Key? key,
    this.text = '"ss"',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: result == true
            ? Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppBarSection(),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: Dimensions.width20),
                        child: const SearchBar(),
                      ),
                      SizedBox(height: Dimensions.containerHeight200),
                      Icon(
                        Icons.search,
                        size: Dimensions.iconSize100,
                      ),
                      SecondaryText(
                        text: ' لا توجد نتائج مطابقة $text ',
                        size: AppFonts.headingSize,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      SecondaryText(text: 'تأكد من كتابة الاسم بشكل صحيح')
                    ],
                  ),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarSection(),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: Dimensions.width20,
                        vertical: Dimensions.height10),
                    child: Row(
                      children: [
                        const Flexible(
                          fit: FlexFit.loose,
                          child: SearchBar(),
                        ),
                        IconButton(
                          onPressed: () {
                            return advanceSearch();
                          },
                          icon: Icon(
                            Icons.list,
                            size: Dimensions.iconSize30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    color: Colors.white,
                    child: advancedSearch == false
                        ? Align(
                            alignment: Alignment.center,
                            child: Wrap(
                              alignment: WrapAlignment.start,
                              children: books[1]['book_category']
                                  .map<Widget>(
                                    (item) => tag(
                                      label: item,
                                      color: Colors.red,
                                    ),
                                  )
                                  .toList(),
                            ),
                          )
                        : Container(
                            height: 0,
                          ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: Dimensions.width20,
                      bottom: Dimensions.height20,
                      top: Dimensions.height20,
                    ),
                    child: SecondaryText(
                      text: 'نتائج مطابقة تماما',
                      color: Colors.black,
                      size: AppFonts.headingSize,
                    ),
                  ),
                  BookItemList(
                    physics: 'never',
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: Dimensions.width20,
                        bottom: Dimensions.height10,
                        top: Dimensions.height20),
                    child: SecondaryText(
                      text: 'نتائج متعلقة بالبحث',
                      color: Colors.black,
                      size: AppFonts.headingSize,
                    ),
                  ),
                  BookItemList(
                    physics: 'never',
                  ),
                ],
              ),
      ),
    );
  }
}
