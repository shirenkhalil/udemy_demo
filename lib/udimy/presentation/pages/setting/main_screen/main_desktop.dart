import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';

class MainDesktopSetting extends StatefulWidget {
  MainDesktopSetting({Key? key}) : super(key: key);

  @override
  _MainDesktopSettingState createState() {
    return _MainDesktopSettingState();
  }
}

class _MainDesktopSettingState extends State<MainDesktopSetting> {
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
        title: titleRow(context: context,text: 'Setting'),
        elevation: 0,
        // leading:MenuWidget(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: Height(context)*0.008),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );
  }
}