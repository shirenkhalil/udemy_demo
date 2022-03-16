import 'package:buildcondition/buildcondition.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udeme_demo/main.dart';
import 'package:udeme_demo/udimy/presentation/pages/home/desktop_parts/course_item.dart';
import 'package:udeme_demo/udimy/presentation/pages/home/desktop_parts/right_image.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';


class MainMobileCategories extends StatefulWidget {
  MainMobileCategories({Key? key}) : super(key: key);

  @override
  _MainMobileCategoriesState createState() {
    return _MainMobileCategoriesState();
  }
}

class _MainMobileCategoriesState extends State<MainMobileCategories> {

int actionIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: MenuWidget(),
          actions: [
            iconButton(
              onPressed: (){Get.toNamed(CART);},
              icon: Icons.shopping_cart_outlined,
              color: Colors.black,
            ),

            iconButton(
              onPressed: (){Get.toNamed(SEARCH);},
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
                    SizedBox(height: 10,),
                    Text('Great savings for',
                      style: GoogleFonts.robotoSlab(
                        fontSize:35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text('a bright future',
                      style: GoogleFonts.robotoSlab(
                        fontSize:35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Courses designed to help you reach your goals start now.',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Courses',
                      style: GoogleFonts.robotoSlab(
                        fontSize:35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: CarouselSlider.builder(
                        itemCount: 15,
                        itemBuilder: (context,index,realIndex) =>buildItem(index),
                        options: CarouselOptions(
                          height:320,
                          pageSnapping: false,
                          viewportFraction: 0.6,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          enlargeCenterPage: true,
                          reverse: true,
                          autoPlayInterval:Duration(seconds: 4),
                          onPageChanged: (index,reason)=>setState(()=>actionIndex =index),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          // scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Categories',
                      style: GoogleFonts.robotoSlab(
                        fontSize:35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 10,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child:Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ButtonCategoriesItem(
                            text:' development',
                            onPressed: (){},),
                          SizedBox(width: 5,),
                          ButtonCategoriesItem(
                            text:' development',
                            onPressed: (){},),
                          SizedBox(width: 5,),
                          ButtonCategoriesItem(
                            text:' development',
                            onPressed: (){},),
                          SizedBox(width: 5,),
                          ButtonCategoriesItem(
                            text:' development',
                            onPressed: (){},),
                          SizedBox(width: 5,),
                          ButtonCategoriesItem(
                            text:' development',
                            onPressed: (){},),
                        ],
                      ),
                    ),
                    SizedBox(height: 100,),
                  
                  ],
                ),


              ],
            ),
          ),
        ),
    );

  }
  Widget buildItem (int index)=>  Center(child: MobCourseItem());
}


