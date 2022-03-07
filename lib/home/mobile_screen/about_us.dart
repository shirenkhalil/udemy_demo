
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:udeme_demo/home/main_screen/home_zoom_drawer_mobile.dart';
import 'package:udeme_demo/res/component.dart';

// ignore: must_be_immutable
class AboutUs extends StatefulWidget {

  @override
  State< AboutUs> createState() => AboutUsState();
}

class AboutUsState extends State< AboutUs> {
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