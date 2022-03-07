import 'package:flutter/material.dart';

import '../../res/component.dart';
import '../../res/main_mobile/zoom_drawer_mobile.dart';

class MainMobileMyLearning extends StatefulWidget {
  MainMobileMyLearning({Key? key}) : super(key: key);

  @override
  _MainMobileMyLearningState createState() {
    return _MainMobileMyLearningState();
  }
}

class _MainMobileMyLearningState extends State<MainMobileMyLearning> {

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
              titleRow(context: context,text: 'My Learning'),
            ],
          ),
        ),
      ),
    );
  }
}