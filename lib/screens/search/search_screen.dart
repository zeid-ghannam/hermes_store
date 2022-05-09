import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
    return  Container(
      child: Center(
        child: Text('this is the search screen'),
      ),
    );
  }
}
