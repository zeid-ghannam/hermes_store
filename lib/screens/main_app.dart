

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hermes_store/models/publisher/publisher_details.dart';
import 'package:hermes_store/screens/book_details/book_details.dart';
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
        GetPage(name: '/', page: () => PublisherDetails()),
        GetPage(name: '/book-details', page: () => BookDetails()),
        // GetPage(name: '/book-details', page: () => BookDetails(), transition: Transition.downToUp),
        GetPage(name: '/search', page: () => SearchScreen()),
        GetPage(name: '/publisher-details', page: () => BookDetails()),
      ],
      locale: Get.deviceLocale,
    );
  }
}