import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../models/book.dart';
import '../constants/app_colors.dart';
import '../constants/dimensions.dart';
import 'heading_text.dart';

class HorizontalListView extends StatelessWidget {
  final String text;
  VoidCallback? onTap;
  String textButton;
  bool linearIndicator;
  HorizontalListView({
    Key? key,
    required this.text,
    this.onTap,
    this.textButton = 'عرض الكل',
    this.linearIndicator = false,
  }) : super(key: key);
  List<Book> books = [
    Book(
      id: 1,
      title: "البحث عن الزمن المفقود ",
      author: "مارسيل بروست",
      translator: "زيد غنام",
      language: "Bulgarian",
      cover: "assets/images/book1.jpg",
      numberOfPages: 181,
      categories: [
        "رومنسي",
        "أكشن",
        "مغامرة",
        "كوميدي",
        "سباسي",
        "خيال علمي",
      ],
      bookHouse: "دار البقاء",
      price: 30.04,
    ),
    Book(
      id: 2,
      title: "Shot in the Heart",
      author: "Feliza Gauch",
      translator: "Loren MacMillan",
      language: "Hungarian",
      cover: "assets/images/book2.png",
      numberOfPages: 122,
      categories: [
        "رومنسي",
        "أكشن",
        "مغامرة",
        "كوميدي",
        "سباسي",
        "خيال علمي",
      ],
      bookHouse: "دار البقاء",
      price: 7.38,
    ),
    Book(
      id: 3,
      title: "Macabre",
      author: "Carny Lismer",
      translator: "Arturo Loakes",
      language: "Kashmiri",
      cover: "assets/images/book3.jpg",
      numberOfPages: 482,
      categories: [
        "رومنسي",
        "أكشن",
        "مغامرة",
        "كوميدي",
        "سباسي",
        "خيال علمي",
      ],
      bookHouse: "دار البقاء",
      price: 30.46,
    ),
    Book(
      id: 4,
      title: "The Sweet Ride",
      author: "Rowland Titford",
      translator: "Elle Hundall",
      language: "Burmese",
      cover: "assets/images/book4.jpg",
      numberOfPages: 546,
      categories: [
        "رومنسي",
        "أكشن",
        "مغامرة",
        "كوميدي",
        "سباسي",
        "خيال علمي",
      ],
      bookHouse: "دار البقاء",
      price: 39.45,
    ),
    Book(
      id: 5,
      title: "Lesson Plan ",
      author: "Avigdor Alps",
      translator: "Phil Espine",
      language: "Dutch",
      cover: "assets/images/book5.jpg",
      numberOfPages: 1206,
      categories: [
        "رومنسي",
        "أكشن",
        "مغامرة",
        "كوميدي",
        "سباسي",
        "خيال علمي",
      ],
      bookHouse: "دار البقاء",
      price: 2.13,
    ),
    Book(
      id: 6,
      title: "My Father's Glory (La gloire de mon père)",
      author: "Konstantine Lorente",
      translator: "Harbert Elcock",
      language: "Kannada",
      cover: "assets/images/book6.png",
      numberOfPages: 565,
      categories: [
        "رومنسي",
        "أكشن",
        "مغامرة",
        "كوميدي",
        "سباسي",
        "خيال علمي",
      ],
      bookHouse: "دار البقاء",
      price: 13.37,
    ),
    Book(
      id: 7,
      title: "Munich",
      author: "Ethelred Snowden",
      translator: "Markus Blundon",
      language: "Papiamento",
      cover: "assets/images/book7.jpg",
      numberOfPages: 600,
      categories: [
        "رومنسي",
        "أكشن",
        "مغامرة",
        "كوميدي",
        "سباسي",
        "خيال علمي",
      ],
      bookHouse: "دار البقاء",
      price: 37.04,
    ),
    Book(
      id: 8,
      title: "Somebody Up There Likes Me",
      author: "Tonie Frostdicke",
      translator: "Feodora Allmen",
      language: "Persian",
      cover: "assets/images/book8.jpg",
      numberOfPages: 232,
      categories: [
        "رومنسي",
        "أكشن",
        "مغامرة",
        "كوميدي",
        "سباسي",
        "خيال علمي",
      ],
      bookHouse: "دار البقاء",
      price: 17.58,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //this is the header section that shown the text widget
        Container(
          margin: EdgeInsets.only(
            left: Dimensions.width20,
            right: Dimensions.width20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //this is the heading title text
              //show all content
              HeadingText(
                text: text,
                size: AppFonts.sectionHeadingSize,
              ),
              TextButton(
                onPressed: onTap,
                child: SecondaryText(
                  text: textButton,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        //this is for the slider section
        Container(
          margin: EdgeInsets.only(
            left: Dimensions.width5,
            // right: Dimensions.width5,
          ),
          height: Dimensions.pageViewContainer240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: books.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(
                    '/book-details',
                    arguments: {
                      'book': books[index],
                    },
                  );
                },
                child: Container(
                  width: Dimensions.bookWidthContainer120,
                  margin: EdgeInsets.only(
                    right: Dimensions.width20,
                    top: Dimensions.height10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: books[index].id.toString(),
                        child: Container(
                          height: Dimensions.bookHeightContainer,
                          width: Dimensions.bookWidthContainer120,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius8),
                            image: DecorationImage(
                              image: AssetImage(books[index].cover ?? ""),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      HeadingText(
                        text: books[index].title ?? "",
                      ),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      SecondaryText(
                        text: books[index].author ?? "",
                        color: AppColors.unActiveColor,
                      ),
                      SizedBox(
                        height: Dimensions.height5,
                      ),
                      Container(
                        child: linearIndicator == false
                            ? null
                            : LinearPercentIndicator(
                                width: Dimensions.bookWidthContainer120,
                                lineHeight: Dimensions.height5,
                                percent: 0.1,
                                backgroundColor: Colors.blueGrey,
                                progressColor: Colors.red,
                                isRTL: true,
                              ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
