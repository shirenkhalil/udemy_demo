import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';



class MainMobileCourses extends StatefulWidget {
  MainMobileCourses({Key? key}) : super(key: key);

  @override
  _MainMobileCoursesState createState() {
    return _MainMobileCoursesState();
  }
}

class _MainMobileCoursesState extends State<MainMobileCourses> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: titleRow(context: context,text: 'Courses'),
        leading:MenuWidget(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: Height(context)*0.008),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );
  }
}
