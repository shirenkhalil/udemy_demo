
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udeme_demo/home/main_screen/home_zoom_drawer_mobile.dart';
import 'package:udeme_demo/res/component.dart';

// ignore: must_be_immutable
class Setting extends StatefulWidget {

  @override
  State<Setting> createState() => SettingState();
}

class SettingState extends State<Setting> {

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
              titleRow(context: context,text: 'Setting'),
              ],
          ),
        ),
      ),
    );
  }
}