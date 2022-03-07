import 'package:flutter/material.dart';

import '../../res/component.dart';
import '../../res/main_mobile/zoom_drawer_mobile.dart';

class MainMobileCart extends StatefulWidget {
  MainMobileCart({Key? key}) : super(key: key);

  @override
  _MainMobileCartState createState() {
    return _MainMobileCartState();
  }
}

class _MainMobileCartState extends State<MainMobileCart> {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: MenuWidget(),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: Height(context) * 0.008),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleRow(context: context, text: 'My Favorite'),
            ],
          ),
        ),
      ),
    );
  }
}
