// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/pages/cart/main_screen/main_desktop.dart';
import 'package:udeme_demo/udimy/presentation/pages/cart/main_screen/main_mobile.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/responsive.dart';


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
