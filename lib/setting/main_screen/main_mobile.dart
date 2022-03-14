import 'package:flutter/material.dart';

import '../../res/component.dart';
import '../../res/main_mobile/zoom_drawer_mobile.dart';

class MainMobileSetting extends StatefulWidget {
  MainMobileSetting({Key? key}) : super(key: key);

  @override
  _MainMobileSettingState createState() {
    return _MainMobileSettingState();
  }
}

class _MainMobileSettingState extends State<MainMobileSetting> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: titleRow(context: context,text: 'Setting'),
        elevation: 0,
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