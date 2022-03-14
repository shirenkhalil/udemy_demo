import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:udeme_demo/about_us/main_about_us.dart';
import 'package:udeme_demo/cart/main_cart.dart';
import 'package:udeme_demo/categories/main_categories.dart';
import 'package:udeme_demo/res/main_mobile/menu_screen.dart';

import 'package:udeme_demo/setting/main_about_us.dart';
import 'package:udeme_demo/my_courses/main_courses.dart';
import 'package:udeme_demo/my_learning/main_my_learning.dart';
import 'package:udeme_demo/notification/main_notification.dart';
import 'package:udeme_demo/register/main_register.dart';
import 'package:udeme_demo/res/component.dart';

import '../../courses/main_courses.dart';
import '../../login/main_login.dart';

final drawerController = ZoomDrawerController();


class DrawerMobile extends StatefulWidget {
  @override
  State<DrawerMobile> createState() => _HomePageState();
  DrawerMobile({Key? key}) : super(key: key);
}

class _HomePageState extends State<DrawerMobile> {
  MenuItem currentItem = MenuItems.categories;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
       controller: drawerController,
      mainScreen: getScreen(),
      menuScreen: Builder(
        builder: (context) => MenuPage(
            currentItem: currentItem,
            onSelectedItem: (item) {
              setState(() => currentItem = item);

              ZoomDrawer.of(context)!.close();
            }),
      ),
      style: DrawerStyle.Style1,
      borderRadius: 40.0,
      showShadow: true,
      angle: 0.0,
      backgroundColor: Colors.blueGrey[600]!,
      // slideWidth: MediaQuery.of(context).size.width *(ZoomDrawer.isRTL()? .45 :0.65),
      openCurve: Curves.fastLinearToSlowEaseIn,
      closeCurve: Curves.bounceInOut,
    );
  }

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.categories:
        return MainCategories();
      case MenuItems.courses:
        return MainMyCourses();
      case MenuItems.myLearning:
        return MainMyLearning();
      case MenuItems.favorite:
        return MainCart();
      case MenuItems.notifications:
        return MainNotification();
      case MenuItems.setting:
        return MainSetting();
      case MenuItems.login:
        return MainLogin();
      case MenuItems.aboutUs:
        return MainAboutUs();
      default:
        return MainCategories();
    }
  }
}

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          ZoomDrawer.of(context)?.toggle() ?? print('null');
        },
        icon: Icon(
          Icons.menu,
          color: mobColor,
          size: 40,
        ),
      );
  }
}
