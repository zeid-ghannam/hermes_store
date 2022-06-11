import 'package:get/get.dart';
import 'package:hermes_store/controller/search_controller.dart';

import 'book_controller.dart';

class ControllerBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(BookController());
    Get.put(SearchController());
  }
}
