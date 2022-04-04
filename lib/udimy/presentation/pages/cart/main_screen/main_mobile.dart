import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:udeme_demo/main.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';

import '../../../widgets/res/main_mobile/zoom_drawer_mobile.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: titleRow(context: context,text: 'MY FAVORITE'),
        elevation: 0,
        leading:  MenuWidget(),
        //   IconButton(
        //   onPressed:() => Get.toNamed(HOME),
        //   icon:Icon(
        //     Icons.menu,
        //     color: mobColor,
        //     size: 40,
        //   ),
        // ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: Height(context) * 0.008),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


          ],
        ),
      ),
    );
  }
}
