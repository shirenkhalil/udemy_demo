import 'package:flutter/material.dart';
import 'package:udeme_demo/notification/main_screen/main_desktop.dart';
import 'package:udeme_demo/notification/main_screen/main_mobile.dart';
import 'package:udeme_demo/res/responsive.dart';

class MainNotification extends StatefulWidget {
  MainNotification({Key? key}) : super(key: key);

  @override
  _MainNotificationState createState() {
    return _MainNotificationState();
  }
}

class _MainNotificationState extends State<MainNotification> {
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
        mobile: MainMobileNotification(),
        tablet: MainMobileNotification(),
        desktop: MainDesktopNotification());
  }
}