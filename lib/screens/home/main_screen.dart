

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hermes_store/screens/home/home_screen.dart';

import '../../shared/widgets/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
