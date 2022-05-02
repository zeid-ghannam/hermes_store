

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes_store/screens/book_details/book_details.dart';
import 'package:hermes_store/screens/home/main_screen.dart';
import 'package:hermes_store/screens/intro/intro_screen.dart';
import 'package:hermes_store/screens/intro/welcome_screen.dart';
import 'package:hermes_store/screens/search/search_screen.dart';


class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:Colors.grey[300],
      ),
        initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MainScreen()),
        GetPage(name: '/book-details', page: () => BookDetails()),
        // GetPage(name: '/book-details', page: () => BookDetails(), transition: Transition.downToUp),
        GetPage(name: '/search', page: () => const SearchScreen()),
        GetPage(name: '/publisher-details', page: () => BookDetails()),
      ],
      locale: Get.deviceLocale,
    );
  }
}