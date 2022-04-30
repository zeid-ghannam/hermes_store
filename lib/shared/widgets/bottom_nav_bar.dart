import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hermes_store/screens/cart/cart_screen.dart';
import 'package:hermes_store/screens/home/home_screen.dart';
import 'package:hermes_store/screens/my_library/my_library.dart';
import 'package:hermes_store/screens/profile/profile_screen.dart';
import 'package:hermes_store/screens/search/search_screen.dart';
import '../constants/app_colors.dart';
import '../constants/dimensions.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(Dimensions.radius30),
          topLeft: Radius.circular(Dimensions.radius30),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.iconActivateColor,
          unselectedItemColor: AppColors.iconInactivateColor,
          iconSize: Dimensions.height30,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
              ),
              label: 'مكتبتي',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'بحث',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'السلة',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'حسابي',
            ),
          ],
          onTap: (index) {
            switch (index) {
              case 0:
                Get.to(() =>const HomeScreen());
                break;
              case 1:
                Get.to(() =>const MyLibrary());
                break;
              case 2:
                Get.to(() =>const SearchScreen());
                break;
              case 3:
                Get.to(() =>const CartScreen());
                break;
              case 4:
                Get.to(() =>const ProfileScreen());
                break;
            }
          },
        ));
  }
}
