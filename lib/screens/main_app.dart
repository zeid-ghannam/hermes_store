import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes_store/controller/controller_bindings.dart';
import 'package:hermes_store/models/language/locale_controller.dart';
import 'package:hermes_store/screens/book_details/book_details.dart';
import 'package:hermes_store/screens/home/main_screen.dart';
import 'package:hermes_store/screens/publisher_details/publisher_details.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final localeController = Get.put(
      MyLocaleController(),
    );
    //this function unFocus the KeyBord if taped out side the textField
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.grey[300],
        ),
        initialRoute: '/',
        initialBinding: ControllerBindings(),
        getPages: [
          GetPage(
            name: '/',
            page: () => MainScreen(),
          ),
          GetPage(
            name: '/book-details',
            page: () => BookDetails(),
          ),
          GetPage(
            name: '/publisher-screen',
            page: () => PublisherDetails(),
          )
        ],
        locale: localeController.locale,
      ),
    );
  }
}
