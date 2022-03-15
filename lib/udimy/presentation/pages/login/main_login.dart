import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/pages/login/main_screen/main_desktop.dart';
import 'package:udeme_demo/udimy/presentation/pages/login/main_screen/main_mobile.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/responsive.dart';


class MainLogin extends StatefulWidget {
  MainLogin({Key? key}) : super(key: key);

  @override
  _MainLoginState createState() {
    return _MainLoginState();
  }
}

class _MainLoginState extends State<MainLogin> {
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
        mobile: MainMobileLogin(),
        tablet: MainMobileLogin(),
        desktop: MainDesktopLogin());
  }
}