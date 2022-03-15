import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
import 'package:udeme_demo/udimy/presentation/pages/about_us/main_about_us.dart';
import 'package:udeme_demo/udimy/presentation/pages/cart/main_cart.dart';
import 'package:udeme_demo/udimy/presentation/pages/categories/main_categories.dart';
import 'package:udeme_demo/udimy/presentation/pages/courses/main_courses.dart';
import 'package:udeme_demo/udimy/presentation/pages/login/main_login.dart';
import 'package:udeme_demo/udimy/presentation/pages/my_learning/main_my_learning.dart';
import 'package:udeme_demo/udimy/presentation/pages/notification/main_notification.dart';
import 'package:udeme_demo/udimy/presentation/pages/search/main_search.dart';
import 'package:udeme_demo/udimy/presentation/pages/setting/main_setting.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/menu_screen.dart';


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
    print('get zoom drawer');
    return ZoomDrawer(
       controller: drawerController,
      mainScreen: getScreen(),
      menuScreen: Builder(
        builder: (context) => MenuPage(
            currentItem: currentItem,
            onSelectedItem: (item) {
              print('get item :: ${item.title}');
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
      case MenuItems.search:
        return MainSearch();
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
