import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:udeme_demo/main.dart';
import 'package:udeme_demo/udimy/presentation/pages/cart/methods/get_cart_courses.dart';
import 'package:udeme_demo/udimy/presentation/pages/categories/desktop_parts/course_item.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';

import '../../../widgets/res/main_mobile/zoom_drawer_mobile.dart';

class MainMobileCart extends StatefulWidget {
  MainMobileCart({Key? key}) : super(key: key);

  @override
  _MainMobileCartState createState() {
    return _MainMobileCartState();
  }
}

class _MainMobileCartState extends State<MainMobileCart> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: titleRow(context: context,text: 'MY FAVORITE'),
        elevation: 0,
        leading:  MenuWidget(),
        //   IconButton(
        //   onPressed:() => Get.toNamed(HOME),
        //   icon:Icon(
        //     Icons.menu,
        //     color: mobColor,
        //     size: 40,
        //   ),
        // ),
      ),
      body: GridView.builder(
          itemCount: getCartCourses().length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 5), itemBuilder: (context,index){
        return CourseItem(context,getCartCourses()[index]);
      }),
    );
  }
}
