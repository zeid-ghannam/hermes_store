import 'package:get/get.dart';
import 'package:hermes_store/controller/book_controller.dart';
import 'package:hermes_store/models/language/locale_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(BookController());
    Get.put(MyLocaleController());
  }
}
