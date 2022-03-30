import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:udeme_demo/injection.dart';
import 'package:udeme_demo/sqfliit.dart';
import 'package:udeme_demo/udimy/presentation/pages/about_us/main_about_us.dart';
import 'package:udeme_demo/udimy/presentation/pages/cart/main_cart.dart';
import 'package:udeme_demo/udimy/presentation/pages/categories/main_categories.dart';
import 'package:udeme_demo/udimy/presentation/pages/categories/main_screen/main_desktop.dart';
import 'package:udeme_demo/udimy/presentation/pages/courses/main_courses.dart';
import 'package:udeme_demo/udimy/presentation/pages/login/main_login.dart';
import 'package:udeme_demo/udimy/presentation/pages/my_learning/main_my_learning.dart';
import 'package:udeme_demo/udimy/presentation/pages/notification/main_notification.dart';
import 'package:udeme_demo/udimy/presentation/pages/register/main_register.dart';
import 'package:udeme_demo/udimy/presentation/pages/search/main_search.dart';
import 'package:udeme_demo/udimy/presentation/pages/setting/main_setting.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/menu_screen.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // للتاكد من انتهاء كل waiting function
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: DrawerMobile(),
      getPages: [
        GetPage(
            name: HOME,
            page: () => DrawerMobile(menuItem: MenuItems.categories,),
            transition: Transition.fadeIn),
        GetPage(
            name: CATEGORIES,
            page: () => DrawerMobile(menuItem: MenuItems.categories,),
            transition: Transition.fadeIn),
        GetPage(
            name: CART, page: () => DrawerMobile(menuItem: MenuItems.favorite,),
            transition: Transition.fadeIn),
        GetPage(
            name: NOTIFICATION,
            page: () => DrawerMobile(menuItem: MenuItems.notifications,),
            transition: Transition.fadeIn),
        GetPage(
            name: LOGIN,
            page: () => DrawerMobile(menuItem: MenuItems.login,),
            transition: Transition.fadeIn),
        GetPage(
            name: MY_LEARNING,
            page: () => DrawerMobile(menuItem: MenuItems.myLearning,),
            transition: Transition.fadeIn),
        GetPage(
            name: ABOUT_US,
            page: () => DrawerMobile(menuItem: MenuItems.aboutUs,),
            transition: Transition.fadeIn),
        GetPage(
            name: SEARCH,
            page: () => DrawerMobile(menuItem: MenuItems.search,),
            transition: Transition.fadeIn),
        GetPage(
            name: REGISTER,
            page: () => DrawerMobile(menuItem: MenuItems.register,),
            transition: Transition.fadeIn),
        GetPage(
            name: MY_COURSES,
            page: () => DrawerMobile(menuItem: MenuItems.courses,),
            transition: Transition.fadeIn),
        GetPage(
            name: SETTING,
            page: () => DrawerMobile(menuItem: MenuItems.setting,),
            transition: Transition.fadeIn),
      ],
    );
  }

}


const String HOME = '/HOME';
const String CATEGORIES = '/CATEGORIES';
const String NOTIFICATION = '/NOTIFICATION';
const String LOGIN = '/LOGIN';
const String REGISTER = '/REGISTER';
const String MY_LEARNING = '/MY_LEARNING';
const String CART = '/CART';
const String ABOUT_US = '/ABOUT_US';
const String SEARCH = '/SEARCH';
const String MY_COURSES = '/MY_COURSES';
const String SETTING = '/SETTING';
