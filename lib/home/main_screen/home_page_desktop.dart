

import 'package:flutter/material.dart';
import 'package:udeme_demo/home/desktop_parts/course_item.dart';
import 'package:udeme_demo/home/desktop_parts/right_image.dart';
import 'package:udeme_demo/res/component.dart';

import '../desktop_parts/appbar.dart';
import '../desktop_parts/register.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({Key? key}) : super(key: key);


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
                              onPressed: (){},
                              icon: Icons.arrow_back_ios_sharp,
                            ),
                          ],
                        ),
                        CourseItem(),
                        SizeBoxWidth(context),
                        CourseItem(),
                        SizeBoxWidth(context),
                        CourseItem(),
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
                              onPressed: (){},
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
}

