import 'package:flutter/material.dart';
import 'package:udeme_demo/about_us/main_screen/main_desktop.dart';
import 'package:udeme_demo/about_us/main_screen/main_mobile.dart';
import 'package:udeme_demo/setting/main_screen/main_desktop.dart';
import 'package:udeme_demo/setting/main_screen/main_mobile.dart';

import '../res/responsive.dart';

class MainSetting extends StatefulWidget {
  MainSetting({Key? key}) : super(key: key);

  @override
  _MainSettingState createState() {
    return _MainSettingState();
  }
}

class _MainSettingState extends State<MainSetting> {
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
      desktop: MainDesktopSetting(),
      mobile:  MainMobileSetting(),
      tablet: MainMobileSetting(),
    );
  }
}