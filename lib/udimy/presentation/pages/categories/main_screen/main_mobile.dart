import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udeme_demo/main.dart';
import 'package:udeme_demo/udimy/presentation/pages/categories/desktop_parts/course_item.dart';
import 'package:udeme_demo/udimy/presentation/pages/categories/desktop_parts/right_image.dart';

import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';

import '../../../../domain/model/categories/categories_model.dart';
import '../../../../domain/model/course/course_model.dart';

class MainMobileCategories extends StatefulWidget {
  MainMobileCategories({Key? key}) : super(key: key);

  @override
  _MainMobileCategoriesState createState() {
    return _MainMobileCategoriesState();
  }
}

class _MainMobileCategoriesState extends State<MainMobileCategories> {
  int actionIndex = 0;
   //cart


  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: MenuWidget(),
        actions: [
          iconButton(
            onPressed: () {
              Get.toNamed(CART);
            },
            icon: Icons.shopping_cart_outlined,
            color: Colors.black,
          ),
          iconButton(
            onPressed: () {
              Get.toNamed(SEARCH);
            },
            icon: Icons.search,
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MobRightImage(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Great savings for',
                    style: GoogleFonts.robotoSlab(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      color: blue,
                    ),
                  ),
                  Text(
                    'a bright future',
                    style: GoogleFonts.robotoSlab(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      color: blue,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Build skills with courses,Courses designed to help you reach your goals start now.',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Courses',
                    style: GoogleFonts.robotoSlab(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: CarouselSlider.builder(
                      itemCount: courseList.length,
                      itemBuilder: (context, index, realIndex) =>
                          Center(child: MobCourseItem(context,courseList[index])),
                      options: CarouselOptions(
                        height: 320,
                        pageSnapping: false,
                        viewportFraction: 0.6,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        enlargeCenterPage: true,
                        reverse: true,
                        autoPlayInterval: Duration(seconds: 4),
                        onPageChanged: (index, reason) =>
                            setState(() => actionIndex = index),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        // scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Categories',
                    style: GoogleFonts.robotoSlab(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => BuildMobCatMainItem(CatModel.catList[index]),
                        separatorBuilder: (context, index) => SizedBox(width: 5,),
                        itemCount:CatModel.catList.length,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget BuildMobCatMainItem (CatModel model)=> Container(
    height: 50,
    width: 150,
    child:ButtonCategoriesItem(
      text: model.title,
      onPressed: () {},
    ),
  );
  // Widget CourseBuildItem(CourseModel course) => Center(child: MobCourseItem());
}
