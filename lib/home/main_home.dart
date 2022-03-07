import 'package:flutter/material.dart';
import 'package:udeme_demo/home/main_screen/home_page_desktop.dart';
import 'package:udeme_demo/home/main_screen/home_page_mobile.dart';
import 'package:udeme_demo/res/main_mobile/zoom_drawer_mobile.dart';
import 'package:udeme_demo/res/responsive.dart';

class MainHome extends StatefulWidget {
  MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() {
    return _MainHomeState();
  }
}

class _MainHomeState extends State<MainHome> {
  @override
  void   initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: MainDesktopHome(),
      mobile:  DrawerMobile(),
      tablet: MainMobileHome(),
    );
  }
}
