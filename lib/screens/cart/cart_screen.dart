
import 'package:flutter/material.dart';
import 'package:hermes_store/screens/cart/cart_book_item.dart';
import 'package:hermes_store/shared/widgets/app_bar_section.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const AppBarSection(),
          CartBookItem(),
        ],
      ),
    );
  }
}
