import 'package:buildcondition/buildcondition.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:udeme_demo/main.dart';
import 'package:udeme_demo/udimy/presentation/pages/home/desktop_parts/course_item.dart';
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
              onPressed: (){Get.toNamed(ABOUT_US);},
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
                Container(
                  padding: EdgeInsets.all(10),
                  height:270,
                  width: 250,
                  child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.yellow[300],
                      radius:100,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        backgroundColor:Colors.green[200],
                        radius:60,
                      ),
                    ),
                    Image(
                      image: AssetImage('web/assets/images/Student-PNG-Clipart.png'),
                      height:300,
                      width: 300,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        transform:Matrix4.rotationZ(0.08),
                        width: 350,
                        height: 30,
                      ),
                    ),
                  ],
                ),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text('Great savings for           a bright future',
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
                          height: 280,
                          pageSnapping: false,
                          initialPage: 0,
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true,
                          reverse: true,
                          autoPlayInterval:Duration(seconds: 4),
                          onPageChanged: (index,reason)=>setState(()=>actionIndex =index),
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
  Widget buildItem (int index)=>Container(
    padding: EdgeInsets.symmetric(vertical: 5,horizontal:5),
    margin: EdgeInsets.symmetric(horizontal:7),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [BoxShadow(color: Colors.blue[900]!, blurRadius: 5),]

    ),

    child: MobCourseItem(),
  );
}


