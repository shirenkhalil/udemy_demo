import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';

import '../../../../../sqfliit.dart';
import '../../../../domain/model/course/course_model.dart';
import '../../categories/desktop_parts/course_item.dart';



class MainMobileCourses extends StatefulWidget {
  MainMobileCourses({Key? key}) : super(key: key);

  @override
  _MainMobileCoursesState createState() {
    return _MainMobileCoursesState();
  }
}

class _MainMobileCoursesState extends State<MainMobileCourses> {
  // late Database database;
@override
  void initState() {
    super.initState();
    createDatabase();
  }



  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: titleRow(context: context,text: 'Courses'),
        leading:MenuWidget(),
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
                padding: EdgeInsets.only(left: 15,right: 15,top: 20),
                crossAxisCount: 2,
               crossAxisSpacing: 10,
              mainAxisSpacing:10,
              childAspectRatio: 1/1.40,
              children: List.generate(courseList.length, (index) => CourseItem(context,courseList[index])),

            ),

          ],
        ),
      ),
    );
  }
}
