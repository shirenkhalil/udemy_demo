import 'package:flutter/material.dart';
import 'package:udeme_demo/about_us/main_screen/main_desktop.dart';
import 'package:udeme_demo/about_us/main_screen/main_mobile.dart';
import 'package:udeme_demo/res/main_mobile/menu_screen.dart';

import '../res/main_mobile/zoom_drawer_mobile.dart';
import '../res/responsive.dart';

class MainAboutUs extends StatefulWidget {
  MainAboutUs({Key? key}) : super(key: key);

  @override
  _MainAboutUsState createState() {
    return _MainAboutUsState();
  }
}

class _MainAboutUsState extends State<MainAboutUs> {
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
      desktop: MainDesktopAboutUs(),
      mobile:  MainMobileAboutUs(),
      tablet: MainMobileAboutUs(),
    );
  }
}