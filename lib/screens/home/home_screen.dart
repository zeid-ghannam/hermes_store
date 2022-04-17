import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/widgets/heading_text.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/rounded_button.dart';
import '../../shared/widgets/horizontal_list_view.dart';
import '../../shared/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///this is for the to top section that hold the notifications ...
              Container(
                margin: EdgeInsets.only(left: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // notification icon
                    Icon(
                      Icons.notifications_none,
                      color: AppColors.iconActivateColor,
                      size: Dimensions.notificationIconSize,
                    ),
                    // welcome text
                    Container(
                      margin: EdgeInsets.only(right: Dimensions.width20),
                      child: HeadingText(
                        text: 'صباح الخير , زيد',
                        size: AppFonts.normalSize,
                      ),
                    ),
                  ],
                ),
              ),
              //sized box of height = 20
              SizedBox(
                height: Dimensions.height20,
              ),

              ///this section for the search bar in the app
              Container(
                //height: Dimensions.height45,
                padding: EdgeInsets.only(
                    left: Dimensions.height20, right: Dimensions.height20),
                child: SearchBar(),
              ),
              //sized box of height = 20
              SizedBox(
                height: Dimensions.height20,
              ),
              RoundedButton(onPressed: (){}, title: 'انشر كتاب',colour: Colors.red,),

              ///this section for the body screen
              HorizontalListView(
                text: 'أحدث الكتب',
              ),

              //sized box of height = 10
              SizedBox(
                height: Dimensions.height10,
              ),
              HorizontalListView(
                text: 'الأكثر مبيعا',
              ),

              //sized box of height = 10
              SizedBox(
                height: Dimensions.height10,
              ),
              HorizontalListView(
                text: 'المفضلين',
              ),

              //sized box of height = 20
              SizedBox(
                height: Dimensions.height20,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(Dimensions.radius30),
          topLeft: Radius.circular(Dimensions.radius30),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.iconActivateColor,
          unselectedItemColor: AppColors.iconInactivateColor,
          iconSize: Dimensions.height30,
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark,),
              label: 'المفضلة',
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
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
