// ignore_for_file: avoid_print, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:udeme_demo/udimy/presentation/pages/categ_home/main_categ_home.dart';
import 'package:udeme_demo/udimy/presentation/pages/register/main_register.dart';
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
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/menu_screen.dart'as mypage;




final drawerController = ZoomDrawerController();

//ignore: must_be_immutable
class DrawerMobile extends StatefulWidget {


  @override
  State<DrawerMobile> createState() => _HomePageState();
  DrawerMobile({Key? key,this.menuItem = mypage.MenuItems.home,}) : super(key: key);
    mypage.MenuItem menuItem;
}
class _HomePageState extends State<DrawerMobile> {


  @override
  Widget build(BuildContext context) {

    print('get zoom drawer');
    return ZoomDrawer(
      controller: drawerController,
      mainScreen: getScreen(),
      menuScreen: Builder(
        builder: (context) => mypage.MenuPage(
            currentItem: widget.menuItem,
            onSelectedItem: (item) {
              print('get item :: ${item.title}');
              setState(() => widget.menuItem = item);
              ZoomDrawer.of(context)!.close();
            }),
      ),
      style: DrawerStyle.style1,
      borderRadius:40.0,
      showShadow: true,
      angle: 0.0,
      menuBackgroundColor: Colors.blueGrey[600]!,
      // slideWidth: MediaQuery.of(context).size.width *(ZoomDrawer.isRTL()? .45 :0.65),
      openCurve: Curves.fastLinearToSlowEaseIn,
      closeCurve: Curves.bounceInOut,
    );
  }

  Widget getScreen() {
    switch (widget.menuItem) {
      case mypage.MenuItems.home:
        return MainCategories();
      case mypage.MenuItems.categories:
        return MainCategoriesH();
      case mypage.MenuItems.courses:
        return MainMyCourses();
      case mypage.MenuItems.myLearning:
        return MainMyLearning();
      case mypage.MenuItems.myCart:
        return MainCart();
      case mypage.MenuItems.notifications:
        return MainNotification();
      case mypage.MenuItems.setting:
        return MainSetting();
      case mypage.MenuItems.login:
        return MainLogin();
      case mypage.MenuItems.search:
        return MainSearch();
      case mypage.MenuItems.aboutUs:
        return MainAboutUs();
      case mypage.MenuItems.register:
        return MainRegister();
      default:
        return MainCategories();
    }
  }
}

class MainCategoriesHome {}

// ignore: use_key_in_widget_constructors
class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: ()=>ZoomDrawer.of(context)?.toggle(),
        icon: Icon(
          Icons.menu,
          color: mobColor,
          size: 40,
        ),
      );
  }
}
Future navigateTo(context,Widget){
  return Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> Widget)
  );
}
