import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes_store/models/language/locale_controller.dart';
import 'package:hermes_store/screens/book_details/book_details.dart';
import 'package:hermes_store/screens/home/main_screen.dart';
import 'package:hermes_store/screens/search/search_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[300],
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MainScreen()),
        GetPage(name: '/book-details', page: () => BookDetails()),
        GetPage(name: '/search', page: () => SearchScreen()),
        GetPage(name: '/publisher-details', page: () => BookDetails()),
      ],
      locale: controller.locale,
    );
  }
}
