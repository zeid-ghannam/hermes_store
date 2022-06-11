import 'package:get/get.dart';

class SearchController extends GetxController {
  bool advancedSearch = false;

  void advanceSearch() {
    if (advancedSearch == false) {
      advancedSearch = true;
    } else {
      advancedSearch = false;
    }
    update();
  }
}
