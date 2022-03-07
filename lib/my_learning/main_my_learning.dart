import 'package:flutter/material.dart';
import 'package:udeme_demo/my_learning/main_screen/main_desktop.dart';
import 'package:udeme_demo/my_learning/main_screen/main_mobile.dart';
import 'package:udeme_demo/res/responsive.dart';

class MainMyLearning extends StatefulWidget {
  MainMyLearning({Key? key}) : super(key: key);

  @override
  _MainMyLearningState createState() {
    return _MainMyLearningState();
  }
}

class _MainMyLearningState extends State<MainMyLearning> {
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
        mobile: MainMobileMyLearning(),
        tablet: MainMobileMyLearning(),
        desktop: MainDesktopMyLearning());
  }
}
