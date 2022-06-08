import 'package:get/get.dart';

import 'book_controller.dart';

class ControllerBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(BookController());
  }
}
