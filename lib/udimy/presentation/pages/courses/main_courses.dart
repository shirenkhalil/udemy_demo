import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/pages/courses/main_screen/main_desktop.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/responsive.dart';


import 'main_screen/main_mobile.dart';

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
    return Responsive(
        mobile: MainMobileCourses(),
        tablet: MainMobileCourses(),
        desktop: MainDesktopMyCourses());
  }
}