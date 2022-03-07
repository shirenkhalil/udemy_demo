import 'package:flutter/material.dart';
import 'package:udeme_demo/cart/main_screen/main_desktop.dart';
import 'package:udeme_demo/cart/main_screen/main_mobile.dart';
import 'package:udeme_demo/res/responsive.dart';

class MainCart extends StatefulWidget {
  MainCart({Key? key}) : super(key: key);

  @override
  _MainCartState createState() {
    return _MainCartState();
  }
}

class _MainCartState extends State<MainCart> {
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
        mobile: MainMobileCart(),
        tablet: MainMobileCart(),
        desktop: MainDesktopCart());
  }
}
