import 'package:flutter/material.dart';
import 'package:udeme_demo/my_courses/main_screen/main_desktop.dart';
import 'package:udeme_demo/my_courses/main_screen/main_mobile.dart';
import 'package:udeme_demo/res/responsive.dart';

class MainMyCourses extends StatefulWidget {
  MainMyCourses({Key? key}) : super(key: key);

  @override
  _MainMyCoursesState createState() {
    return _MainMyCoursesState();
  }
}

class _MainMyCoursesState extends State<MainMyCourses> {
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
    return Responsive(mobile: MainMobileMyCourses(), tablet: MainMobileMyCourses(), desktop: MainDesktopMyCourses());
  }
}