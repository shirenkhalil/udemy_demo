import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udeme_demo/main.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';

import '../../home/desktop_parts/appbar.dart';
import '../../home/desktop_parts/course_item.dart';
import '../../home/desktop_parts/register.dart';
import '../../home/desktop_parts/right_image.dart';


class MainDesktopCategories extends StatefulWidget {
  MainDesktopCategories({Key? key}) : super(key: key);

  @override
  _MainDesktopCategoriesState createState() {
    return _MainDesktopCategoriesState();
  }
}

class _MainDesktopCategoriesState extends State<MainDesktopCategories> {
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
                alignment: Alignment.center,
                width:  Width(context),
                height:Height(context)* 0.7,
                color: green1,
                child: Column(
                  children: [
                    SizedBox(height:20,),
                    Text(
                      'Browser our Top courses',
                      style: TextStyle(
                        color: orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                      maxLines: 2,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child:iconButton(
                              onPressed: next,
                              icon: Icons.arrow_back_ios_sharp,
                            ) ,
                          ),
                          Container(
                            height:800,
                            width: Width(context)*0.9,
                            child: CarouselSlider.builder(
                              carouselController: controller,
                              itemCount: 20,
                              itemBuilder: (context,index,realIndex) =>buildItem ( index),
                              options: CarouselOptions(
                                height:800,
                                initialPage: 0,
                                enlargeCenterPage: true,
                                enlargeStrategy: CenterPageEnlargeStrategy.height,
                                autoPlayInterval:Duration(seconds: 4),
                                autoPlayAnimationDuration: Duration(seconds: 1),
                                onPageChanged: (index,reason)=>setState(()=>actionIndex =index),
                                pageSnapping: false,
                                viewportFraction: 0.20,
                                enableInfiniteScroll: true,
                                reverse: true,
                                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child:  iconButton(
                              onPressed: previous,
                              icon: Icons.arrow_forward_ios,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 150,),
            ],
          ),
        ),
      ),
    );
  }
  void next()=> controller.nextPage(duration: Duration(milliseconds: 500));
  void previous() => controller.previousPage(duration: Duration(milliseconds: 500));
  Widget buildItem (int index)=>Center(child: WebCourseItem());
}

