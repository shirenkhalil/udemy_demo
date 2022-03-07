import 'package:flutter/material.dart';

import '../../res/component.dart';
import '../../res/main_mobile/zoom_drawer_mobile.dart';

class MainMobileCategories extends StatefulWidget {
  MainMobileCategories({Key? key}) : super(key: key);

  @override
  _MainMobileCategoriesState createState() {
    return _MainMobileCategoriesState();
  }
}

class _MainMobileCategoriesState extends State<MainMobileCategories> {
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
              titleRow(context: context,text: 'Categories'),
            ],
          ),
        ),
      ),
    );
  }
}