// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udeme_demo/injection.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/menu_screen.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';

 main()async{
  WidgetsFlutterBinding.ensureInitialized();
 await init();
    runApp(const MyApp());// للتاكد من انتهاء كل waiting function
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('start run app ............................................');
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
            page: () => DrawerMobile(menuItem: MenuItems.home,),
            transition: Transition.fadeIn),
        GetPage(
            name: CATEGORIES,
            page: () => DrawerMobile(menuItem: MenuItems.categories,),
            transition: Transition.fadeIn),
        GetPage(
            name: CART,
            page: () => DrawerMobile(menuItem: MenuItems.myCart,),
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
