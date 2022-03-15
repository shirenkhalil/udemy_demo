import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/pages/register/main_screen/main_desktop.dart';
import 'package:udeme_demo/udimy/presentation/pages/register/main_screen/main_mobile.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/responsive.dart';


class MainRegister extends StatefulWidget {
  MainRegister({Key? key}) : super(key: key);

  @override
  _MainRegisterState createState() {
    return _MainRegisterState();
  }
}

class _MainRegisterState extends State<MainRegister> {
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
        mobile: MainMobileRegister(),
        tablet: MainMobileRegister(),
        desktop: MainDesktopRegister());
  }
}
