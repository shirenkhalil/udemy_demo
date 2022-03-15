

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/pages/home/desktop_parts/course_item.dart';
import 'package:udeme_demo/udimy/presentation/pages/home/desktop_parts/right_image.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';


import '../desktop_parts/appbar.dart';
import '../desktop_parts/register.dart';

class MainDesktopHome extends StatefulWidget {
  const MainDesktopHome({Key? key}) : super(key: key);

  @override
  State<MainDesktopHome> createState() => _MainDesktopHomeState();
}

class _MainDesktopHomeState extends State<MainDesktopHome> {
   int actionIndex=0;
   final controller = CarouselController();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar:PreferredSize(
            preferredSize: Size.fromHeight(70.0),
        child:AppBarWidget() ,
        ),
        body: SingleChildScrollView (
          child: Column(
            children: [
              SizeBoxHeight(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Register(),
                  SizedBox(width: Width(context)*0.15),
                 RightImage(),
                ],
              ),
              SizeBoxHeight(context),
              Container(
                width:  Width(context),
                height:Height(context)* 0.9,
                color: green1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Browser our Top courses',
                      style: TextStyle(
                        color: orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                      maxLines: 2,
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            iconButton(
                              onPressed: next,
                              icon: Icons.arrow_back_ios_sharp,
                            ),
                          ],
                        ),
                        CarouselSlider.builder(
                          carouselController: controller,
                          itemCount: 15,
                          itemBuilder: (context,index,realIndex) =>Container(
                              height: 400,
                              width: 250,
                              child:buildItem ( index),
                          ),
                          options: CarouselOptions(
                            height: 250,
                            initialPage: 0,
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                            autoPlayInterval:Duration(seconds: 3),
                            autoPlayAnimationDuration: Duration(seconds: 1),
                            onPageChanged: (index,reason)=>setState(()=>actionIndex =index),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        // CourseItem(),
                        // SizeBoxWidth(context),
                        // CourseItem(),
                        // SizeBoxWidth(context),
                        // CourseItem(),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            iconButton(
                              onPressed: previous,
                              icon: Icons.arrow_forward_ios,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void next()=> controller.nextPage(duration: Duration(milliseconds: 500));
  void previous() => controller.previousPage(duration: Duration(milliseconds: 500));
   Widget buildItem (int index)=>Container(
     padding: EdgeInsets.symmetric(vertical: 5,horizontal:5),
     margin: EdgeInsets.symmetric(horizontal:7),
     decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(10),
         boxShadow: [BoxShadow(color: Colors.blue[900]!, spreadRadius: 2),]

     ),

     child:CourseItem(),
   );
}

