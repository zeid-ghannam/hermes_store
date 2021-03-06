import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes_store/models/book.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/app_bar_section.dart';
import 'package:hermes_store/shared/widgets/custom_button.dart';
import 'package:hermes_store/shared/widgets/custom_button_with_icon.dart';

import '../../shared/constants/app_colors.dart';
import '../../shared/widgets/heading_text.dart';
import '../../shared/widgets/secondary_text.dart';
import '../../shared/widgets/tag.dart';

class BookDetails extends StatelessWidget {
  BookDetails({
    Key? key,
  }) : super(key: key);

  Book book = Get.arguments['book'];
  List<Color> colors = [
    const Color(0xFFff6666),
    const Color(0xFF007f5c),
    const Color(0xFF5f65d3),
    const Color(0xFF60230b),
    const Color(0xFF235314),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    book.cover ?? '',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 100.0,
                  sigmaY: 100.0,
                  // sigmaX: 100.0,
                  // sigmaY: 100.0,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    AppBarSection(
                      leftVisible: true,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          right: Dimensions.width20,
                          left: Dimensions.width20,
                          top: Dimensions.width20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // this for the book cover image
                          Hero(
                            tag: book.id.toString(),
                            child: Container(
                              height: Dimensions.bookDetailHeightContainer,
                              width: Dimensions.bookDetailWidthContainer,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius8),
                                image: DecorationImage(
                                    image: AssetImage(book.cover ?? ''),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.width20,
                          ),
                          //this is details about the book : book name, author name , translator name , book house, book rating , custom button for share the book
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              SizedBox(
                                width: Dimensions.containerWidth200,
                                child: HeadingText(
                                  text: book.title ?? '',
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                              SizedBox(
                                height: Dimensions.width5,
                              ),
                              SecondaryText(
                                text: book.author ?? '',
                                color: AppColors.unActiveColor,
                              ),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              SecondaryText(
                                text: book.translator ?? '',
                                color: AppColors.unActiveColor,
                              ),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              SecondaryText(
                                text: book.bookHouse ?? '',
                                color: AppColors.unActiveColor,
                              ),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              //rating the book
                              Row(
                                children: [
                                  Wrap(
                                    children: List.generate(
                                      5,
                                      (index) => Icon(
                                        Icons.star,
                                        color: AppColors.iconInactivateColor,
                                        size: Dimensions.height10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //share book with some one
                              Container(
                                margin:
                                    EdgeInsets.only(top: Dimensions.height10),
                                height: Dimensions.buttonHeightContainer50,
                                child: CustomButton(
                                  onPressed: () {},
                                  title: '???????????? ????????????',
                                  colour: AppColors.buttonColor,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    //this for the tag section : book category.
                    Container(
                      margin: EdgeInsets.only(right: Dimensions.height20),
                      width: Dimensions.screenWidth,
                      child: Align(
                        alignment: Alignment.center,
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: book.categories!
                              .map<Widget>(
                                (item) => tag(
                                  label: item,
                                  color: (colors..shuffle()).first,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ////////////////////
            SizedBox(
              height: Dimensions.height20,
            ),
            //this section for the book detail: the price, pages,book language
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius8),
                color: AppColors.primaryColor,
              ),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              height: Dimensions.containerHeight70,
              margin: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SecondaryText(
                        text: '?????? ????????????',
                        color: AppColors.activeColor,
                        size: AppFonts.normalSize,
                      ),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      SecondaryText(
                        text: book.language!,
                        color: AppColors.activeColor,
                        size: AppFonts.normalSize,
                      ),
                    ],
                  ),
                  VerticalDivider(
                    width: Dimensions.width20,
                    indent: Dimensions.height10,
                    endIndent: Dimensions.height10,
                    thickness: Dimensions.width5 / 2.5,
                    color: AppColors.secondaryColor,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SecondaryText(
                        text: '?????? ?????????????? ',
                        color: AppColors.activeColor,
                        size: AppFonts.normalSize,
                      ),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      SecondaryText(
                        text: book.numberOfPages.toString(),
                        color: AppColors.activeColor,
                        size: AppFonts.normalSize,
                      ),
                    ],
                  ),
                  VerticalDivider(
                    width: Dimensions.width20,
                    indent: Dimensions.height10,
                    endIndent: Dimensions.height10,
                    thickness: Dimensions.width5 / 2,
                    color: AppColors.secondaryColor,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SecondaryText(
                        text: '?????? ????????????',
                        color: AppColors.activeColor,
                        size: AppFonts.normalSize,
                      ),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      SecondaryText(
                        text: '\$ ${book.price}',
                        color: AppColors.activeColor,
                        size: AppFonts.normalSize,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            //this is for the book summary
            Container(
              margin: EdgeInsets.only(
                  right: Dimensions.width20, left: Dimensions.width20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingText(
                    text: '????????',
                    size: AppFonts.sectionHeadingSize,
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  SecondaryText(
                    text: '?????????????? ???????? ???????????? ??????????'
                        ' ?? ???????????? ???????? ???? ???????????? ?????????????? ???????? ???? ?????? ???? ?????????? ???? ???????? ???????????? '
                        '?? ???? ???? ?????? ???????????? ?????????? '
                        '?? ???????????? ???????? ?????????? ???????? ?????????? ?????? ???????????????? ???????? ?? ???????? ???? ?????????????????? ???????????????? ???????? ???????????? ?????? ?????? ??????????'
                        ' . ???????? ???????? ?????????? ?????????????? ???????????? ?????????????? ?? ???????????????? ???????????????? ?????????????? ??????????'
                        ' ?? ???? ?????? ???? ?????????????? ???? ???????? ?????????? ?????? ?????? ?????? ???????????????? ?????????????????? .',
                    color: AppColors.activeColor,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    size: AppFonts.normalSize,
                    textAlign: TextAlign.justify,
                    // overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  HeadingText(
                    text: '???????????? ???????????? ',
                    size: AppFonts.sectionHeadingSize,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            // this is the place of the book detail like the publisher country , the date of the publishing ,ISBN .....
            Container(
              margin: EdgeInsets.only(right: Dimensions.width20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: Dimensions.bookWidthContainer120,
                          child: HeadingText(text: '?????????? ?????????? :')),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      SecondaryText(
                        text: '5 ???????? 2022',
                        color: AppColors.activeColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: Dimensions.bookWidthContainer120,
                          child: HeadingText(text: '?????? ?????????? :')),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      SecondaryText(
                        text: '??????????',
                        color: AppColors.activeColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: Dimensions.bookWidthContainer120,
                          child: HeadingText(text: ' ?????? ISBN :')),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      SecondaryText(
                        text: '51231232022',
                        color: AppColors.activeColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: Dimensions.bookWidthContainer120,
                        child: HeadingText(text: '?????????????? :'),
                      ),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      SecondaryText(
                        text: book.translator ?? '',
                        fontWeight: FontWeight.w400,
                        color: AppColors.activeColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: Dimensions.bookWidthContainer120,
                        child: HeadingText(text: '???????????? :'),
                      ),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/publisher-screen');
                        },
                        child: SecondaryText(
                          text: book.author!,
                          fontWeight: FontWeight.w400,
                          color: AppColors.activeColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: Dimensions.bookWidthContainer120,
                        child: HeadingText(text: '???????? ?????????? :'),
                      ),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      SecondaryText(
                        text: '??????',
                        fontWeight: FontWeight.w400,
                        color: AppColors.activeColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: Dimensions.width20),
                  width: Dimensions.buttonWidthContainer200,
                  height: Dimensions.buttonHeightContainer60,
                  child: CustomButtonWithIcon(
                    onPressed: () {},
                    title: '?????? ?????? ??????????????????',
                    icon: Icons.add,
                  ),
                ),
                SizedBox(
                  width: Dimensions.width20,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SecondaryText(
                        text: '?????? ?????? ??????????????',
                        color: AppColors.activeColor,
                      ),
                      SizedBox(
                        width: Dimensions.width10,
                      ),
                      const Icon(Icons.favorite_outline),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
          ],
        ),
      ),
    );
  }
}
//book category
