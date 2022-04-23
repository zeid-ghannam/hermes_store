

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hermes_store/screens/home/home_screen.dart';
import 'package:hermes_store/screens/my_library/my_favorite_books.dart';

import 'package:hermes_store/screens/my_library/my_library.dart';
import 'package:hermes_store/screens/my_library/my_library_body.dart';
import 'package:hermes_store/shared/widgets/book_item.dart';
import 'package:hermes_store/shared/widgets/book_list.dart';

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
      home:  Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body:HomeScreen(),
        ),
      ),
    );
  }
}