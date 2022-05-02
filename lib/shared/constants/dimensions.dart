import 'package:get/get.dart';

//this class for put dynamic dimensions for all widget
// to work in all kind of devices even if it small or big
class Dimensions {
  //this for get the height and width of the device using the get package
  static double screenHeight= Get.context!.height;
  static double screenWidth= Get.context!.width;


  //dynamic container size
  static double publisherMainContainer380 = screenHeight/2.05;
  static double pageViewMainContainer320 = screenHeight/2.5;
  static double pageViewContainer270 = screenHeight/3.2;
  static double pageViewContainer220 = screenHeight/3.4;
  static double pageViewContainer200 = screenHeight/3.9;
  static double bookWidthContainer = screenHeight/6.5;
  static double widthContainer120 = screenHeight/6.5;
  static double bookDetailWidthContainer = screenHeight/5.5;
  static double bookHeightContainer = screenHeight/5;
  static double bookDetailHeightContainer = screenHeight/3.985;
  static double pageViewTextContainer100 = screenHeight/7.97;
  static double heightContainer = screenHeight/2.95;
  static double textItemContainer = screenHeight/2.84;
  static double containerHeight70 = screenHeight/11.38;
  //publisher image container
  static double publisherHeightContainer = screenHeight/3.9;
  static double publisherWidthContainer = screenHeight/5.6;


  // dynamic height
  static double height10= screenHeight/79.7;
  static double height15= screenHeight/53.1;
  static double height20= screenHeight/39.85;
  static double height25= screenHeight/31.88;
  static double height30= screenHeight/26.56;
  static double height40= screenHeight/19.92;
  static double height45= screenHeight/17.71;
  static double height70 = screenHeight/11.38;

  // dynamic width
  static double width5= screenHeight/159.4;
  static double width10= screenHeight/79.7;
  static double width15= screenHeight/53.1;
  static double width20= screenHeight/39.85;
  static double width25= screenHeight/31.88;
  static double width30= screenHeight/26.56;
  static double width40= screenHeight/19.92;
  static double width45= screenHeight/17.71;



  //radius dynamic size
  static double radius5= screenHeight/159.4;
  static double radius8= screenHeight/97.625;
  static double radius15= screenHeight/53.13;
  static double radius20= screenHeight/39.85;
  static double radius30= screenHeight/26.56;
  static double radius70= screenHeight/11.38;


  // Icon dynamic size
  static double iconSize16=screenHeight/49.8;
  static double iconSize24=screenHeight/33.2;
  static double iconSize28=screenHeight/28.46;
  static double notificationIconSize=screenHeight/30;
  static double searchIconSize=screenHeight/24;


  //bottom height
  static double bottomHeightBar=screenHeight/6.64;


  // button dimensions



  static double buttonWidthContainer320 = screenHeight/2.5;
  static double buttonWidthContainer200 = screenHeight/3.9;
  static double buttonWidthContainer120 = screenHeight/6.5;
  static double buttonHeightContainer90 = screenHeight/8.67;
  static double buttonHeightContainer70 = screenHeight/10.41;
  static double buttonHeightContainer60 = screenHeight/14.51;

  // text field container
  static double containerTextFieldHeight48 = screenHeight/16.27;


}