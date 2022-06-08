import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final RxList cart = [].obs;
  int currentPageValue = 0;
  PageController pgController = PageController(viewportFraction: 0.87);
  void addToCart(Widget widget) {
    cart.add(widget);
    update();
  }

  void removeFromCart(Widget widget) {
    cart.remove(widget);
    update();
  }

  void pageController() {
    pgController.addListener(
      () {
        currentPageValue = pgController.page! as int;
      },
    );
    update();
    // dispose();
  }
}
