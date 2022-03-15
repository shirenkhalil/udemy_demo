import 'package:flutter/material.dart';

import 'package:udeme_demo/udimy/presentation/widgets/res/responsive.dart';

import 'main_screen/main_desktop.dart';
import 'main_screen/main_mobile.dart';

class MainSearch extends StatefulWidget {
  MainSearch({Key? key}) : super(key: key);

  @override
  _MainSearchState createState() {
    return _MainSearchState();
  }
}

class _MainSearchState extends State<MainSearch> {
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
      desktop: MainDesktopSearch(),
      mobile:  MainMobileSearch(),
      tablet: MainMobileSearch(),
    );
  }
}