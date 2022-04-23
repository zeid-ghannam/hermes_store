import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hermes_store/screens/home/home_screen.dart';
import 'package:hermes_store/screens/my_library/my_favorite_books.dart';
import 'package:hermes_store/screens/my_library/my_library_body.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/heading_text.dart';
import 'package:hermes_store/shared/widgets/horizontal_list_view.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

class MyLibrary extends StatefulWidget {
  const MyLibrary({Key? key}) : super(key: key);

  @override
  State<MyLibrary> createState() => _MyLibraryState();
}

class _MyLibraryState extends State<MyLibrary> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController _tabController=TabController(length: 2, vsync: this);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: Dimensions.height20,),
          Container(

            margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                SecondaryText(text:'مكتبتي',color: AppColors.selectedTextColor,size: AppFonts.normalSize,),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
           SizedBox(height: Dimensions.height20,),
          TabBar(
            indicatorWeight: 6.0,
            indicatorSize:TabBarIndicatorSize.label ,
            indicatorColor: AppColors.selectedTextColor,
            unselectedLabelColor:AppColors.unSelectedTextColor,
            labelColor: AppColors.selectedTextColor,
            controller: _tabController,
            tabs: [
              Tab(
                child:Text('مكتبتي',style: TextStyle(fontSize: AppFonts.headingSize, fontWeight: FontWeight.bold),),
              ),
              Tab(
               child:Text( 'المفضلة',style: TextStyle(fontSize: AppFonts.headingSize, fontWeight: FontWeight.bold),),
              ),

          ],),
          SizedBox(height: Dimensions.height45,),
          Expanded(
            child: Container(
              height:200,
              child: TabBarView(
                physics: AlwaysScrollableScrollPhysics(),
                controller: _tabController,
                children: [

                  MyLibraryBody(),
                  MyFavoriteBooks(),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
