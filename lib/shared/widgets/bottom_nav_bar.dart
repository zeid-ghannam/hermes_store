import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/dimensions.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
     int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
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
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
