import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CartController extends GetxController {
  List<Widget> cart = [];

  void addToCart(Widget widget) {
    cart.add(widget);
    update();
  }

  void removeFromCart(Widget widget) {
    cart.remove(widget);
    update();
  }
}
