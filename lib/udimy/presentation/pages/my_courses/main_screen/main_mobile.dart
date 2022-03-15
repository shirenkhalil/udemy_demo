import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';


class MainMobileMyCourses extends StatefulWidget {
  MainMobileMyCourses({Key? key}) : super(key: key);

  @override
  _MainMobileMyCoursesState createState() {
    return _MainMobileMyCoursesState();
  }
}

class _MainMobileMyCoursesState extends State<MainMobileMyCourses> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading:MenuWidget(),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: Height(context)*0.008),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleRow(context: context,text: 'My Courses'),
            ],
          ),
        ),
      ),
    );
  }
}