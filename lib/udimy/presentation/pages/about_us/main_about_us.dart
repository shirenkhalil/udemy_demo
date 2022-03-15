import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/responsive.dart';

import 'main_screen/main_desktop.dart';
import 'main_screen/main_mobile.dart';

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