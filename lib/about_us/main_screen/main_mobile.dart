import 'package:flutter/material.dart';

import '../../res/component.dart';
import '../../res/main_mobile/zoom_drawer_mobile.dart';

class MainMobileAboutUs extends StatefulWidget {
  MainMobileAboutUs({Key? key}) : super(key: key);

  @override
  _MainMobileAboutUsState createState() {
    return _MainMobileAboutUsState();
  }
}

class _MainMobileAboutUsState extends State<MainMobileAboutUs> {
  var emailControl = TextEditingController();
  var passwordControl = TextEditingController();

  bool  isPassword =true;

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
              titleRow(context: context,text: 'About us'),

            ],
          ),
        ),
      ),
    );
  }
}