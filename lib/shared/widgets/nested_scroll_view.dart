import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/book_list.dart';
import 'package:hermes_store/shared/widgets/heading_text.dart';
import 'package:hermes_store/shared/widgets/search_bar.dart';

import '../constants/app_colors.dart';
import 'app_bar_section.dart';
import 'book_item.dart';

class NestedScrollViewWidget extends StatelessWidget {
  NestedScrollViewWidget({Key? key}) : super(key: key);
  List<dynamic> books = [
    {
      "id": 1,
      "title": "Good Time Max",
      "author": "Homere Spicer",
      "translator": "Carline Dauney",
      "language": "Bulgarian",
      "cover": "assets/images/book1.jpg",
      "number_of_pages": 181,
      "price": 30.04,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 2,
      "title": "Shot in the Heart",
      "author": "Feliza Gauch",
      "translator": "Loren MacMillan",
      "language": "Hungarian",
      "cover": "assets/images/book2.png",
      "number_of_pages": 122,
      "price": 7.38,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 3,
      "title": "Macabre",
      "author": "Carny Lismer",
      "translator": "Arturo Loakes",
      "language": "Kashmiri",
      "cover": "assets/images/book3.jpg",
      "number_of_pages": 482,
      "price": 30.46,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 4,
      "title": "The Sweet Ride",
      "author": "Rowland Titford",
      "translator": "Elle Hundall",
      "language": "Burmese",
      "cover": "assets/images/book4.jpg",
      "number_of_pages": 546,
      "price": 39.45,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 5,
      "title": "Lesson Plan ",
      "author": "Avigdor Alps",
      "translator": "Phil Espine",
      "language": "Dutch",
      "cover": "assets/images/book5.jpg",
      "number_of_pages": 1206,
      "price": 2.13,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 6,
      "title": "My Father's Glory (La gloire de mon père)",
      "author": "Konstantine Lorente",
      "translator": "Harbert Elcock",
      "language": "Kannada",
      "cover": "assets/images/book6.png",
      "number_of_pages": 565,
      "price": 13.37,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 7,
      "title": "Munich",
      "author": "Ethelred Snowden",
      "translator": "Markus Blundon",
      "language": "Papiamento",
      "cover": "assets/images/book7.jpg",
      "number_of_pages": 600,
      "price": 37.04,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 8,
      "title": "Somebody Up There Likes Me",
      "author": "Tonie Frostdicke",
      "translator": "Feodora Allmen",
      "language": "Persian",
      "cover": "assets/images/book8.jpg",
      "number_of_pages": 232,
      "price": 17.58,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 1,
      "title": "Good Time Max",
      "author": "Homere Spicer",
      "translator": "Carline Dauney",
      "language": "Bulgarian",
      "cover": "assets/images/book1.jpg",
      "number_of_pages": 181,
      "price": 30.04,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 2,
      "title": "Shot in the Heart",
      "author": "Feliza Gauch",
      "translator": "Loren MacMillan",
      "language": "Hungarian",
      "cover": "assets/images/book2.png",
      "number_of_pages": 122,
      "price": 7.38,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 3,
      "title": "Macabre",
      "author": "Carny Lismer",
      "translator": "Arturo Loakes",
      "language": "Kashmiri",
      "cover": "assets/images/book3.jpg",
      "number_of_pages": 482,
      "price": 30.46,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 4,
      "title": "The Sweet Ride",
      "author": "Rowland Titford",
      "translator": "Elle Hundall",
      "language": "Burmese",
      "cover": "assets/images/book4.jpg",
      "number_of_pages": 546,
      "price": 39.45,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 5,
      "title": "Lesson Plan ",
      "author": "Avigdor Alps",
      "translator": "Phil Espine",
      "language": "Dutch",
      "cover": "assets/images/book5.jpg",
      "number_of_pages": 1206,
      "price": 2.13,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 6,
      "title": "My Father's Glory (La gloire de mon père)",
      "author": "Konstantine Lorente",
      "translator": "Harbert Elcock",
      "language": "Kannada",
      "cover": "assets/images/book6.png",
      "number_of_pages": 565,
      "price": 13.37,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 7,
      "title": "Munich",
      "author": "Ethelred Snowden",
      "translator": "Markus Blundon",
      "language": "Papiamento",
      "cover": "assets/images/book7.jpg",
      "number_of_pages": 600,
      "price": 37.04,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 8,
      "title": "Somebody Up There Likes Me",
      "author": "Tonie Frostdicke",
      "translator": "Feodora Allmen",
      "language": "Persian",
      "cover": "assets/images/book8.jpg",
      "number_of_pages": 232,
      "price": 17.58,
      "book_summary":
      'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },

  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: <Widget>[
        SliverList(

          delegate: SliverChildListDelegate([
            SizedBox(
              height: (Dimensions.bookHeightContainer+Dimensions.height20*2)*books.length,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  //this is the app bar search section in this screen
                  const AppBarSection(text: 'بحث'),
                  //the search text field and filter
                  Container(
                    margin: EdgeInsets.all(Dimensions.height20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Dimensions.pageViewMainContainer320,
                          child: const SearchBar(),
                        ),
                        Icon(
                          Icons.tune,
                          color: AppColors.activeColor,
                          size: Dimensions.searchIconSize,
                        ),
                      ],
                    ),
                  ),
                  // this is the result screen
                  Padding(
                    padding: EdgeInsets.only(right: Dimensions.width20),
                    child: HeadingText(text: 'نتائج مطابقة تماما'),
                  ),
                   BookItemList(physics: "never",),
                  // BookItem(
                  //   i: 0,
                  //   bookTitle: books[0]['title'],
                  //   bookImage: books[0]['cover'],
                  //   bookAuthor: books[0]['author'],
                  //   bookSummary: '',
                  // ),

                  SizedBox(height: Dimensions.height20,),
                  Padding(
                    padding: EdgeInsets.only(right: Dimensions.width20),
                    child: HeadingText(text: 'نتائج مطابقة تماما'),
                  ),
                  SizedBox(height: Dimensions.height10,),
                  BookItemList(physics: "never",),
                  // Expanded(child: NestedScrollViewWidget())
                ],
              ),
            ),

        ]),),

        // SliverFixedExtentList(
        //   itemExtent: Dimensions.pageViewMainContainer320,
        //   delegate: SliverChildListDelegate([
        //     BookItemList(),
        //
        //   ]),
        // ),
        // // Text('data,'),
        // SliverList(delegate: SliverChildListDelegate([
        //   Text('SDKLNFLSJDF,'),
        // ])),
        //
        // SliverFixedExtentList(
        //   itemExtent: Dimensions.pageViewMainContainer320+200,
        //   delegate: SliverChildListDelegate([
        //     BookItemList(),
        //
        //   ]),
        // ),

      ],
    );
  }
}
