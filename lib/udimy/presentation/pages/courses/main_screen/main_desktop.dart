import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/pages/home/desktop_parts/course_item.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';

class MainDesktopMyCourses extends StatefulWidget {
  MainDesktopMyCourses({Key? key}) : super(key: key);

  @override
  _MainDesktopMyCoursesState createState() {
    return _MainDesktopMyCoursesState();
  }
}

class _MainDesktopMyCoursesState extends State<MainDesktopMyCourses> {
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
        elevation: 0,
        title: titleRow(context: context,text: 'Courses'),
      ),


      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        // padding: EdgeInsets.symmetric(vertical: Height(context)*0.008),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(left: 20,right: 20,top: 20),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing:10,
              childAspectRatio: 1/1.44,
              children: List.generate(50, (index) => CourseItem(index)),

            ),

          ],
        ),
      ),
    );
  }
}