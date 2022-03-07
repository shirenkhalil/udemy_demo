import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:udeme_demo/home/mobile_screen/about_us.dart';
import 'package:udeme_demo/home/mobile_screen/categories.dart';
import 'package:udeme_demo/home/mobile_screen/courses.dart';
import 'package:udeme_demo/home/mobile_screen/favorite.dart';
import 'package:udeme_demo/home/mobile_screen/menu_screen.dart';
import 'package:udeme_demo/home/mobile_screen/my_learning.dart';
import 'package:udeme_demo/home/mobile_screen/notification-page.dart';
import 'package:udeme_demo/home/mobile_screen/register_mob_screen.dart';
import 'package:udeme_demo/home/mobile_screen/setting.dart';
import 'package:udeme_demo/res/component.dart';


final drawerController = ZoomDrawerController();

class HomePageMobile extends StatefulWidget{

  @override
  State<HomePageMobile> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageMobile> {
  MenuItem currentItem = MenuItems.categories;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      // controller: drawerController,
      mainScreen:getScreen(),
      menuScreen:Builder (
        builder: (context) => MenuPage(
          currentItem:currentItem,
          onSelectedItem:(item){
            setState(()=> currentItem =item);
            ZoomDrawer.of(context)!.close();
          }
        ),
      ) ,
      style: DrawerStyle.Style1,
      borderRadius: 20.0,
      showShadow: true,
      angle: 0.0,
      backgroundColor:Colors.blueGrey[100]!,
      // slideWidth: MediaQuery.of(context).size.width *(ZoomDrawer.isRTL()? .45 :0.65),
      openCurve: Curves.fastLinearToSlowEaseIn,
      closeCurve: Curves.bounceInOut,
    );

  }
  Widget getScreen(){
    switch (currentItem) {
      case MenuItems.categories:
        return Categories();
      case MenuItems.courses:
        return Courses();
      case MenuItems.myLearning:
        return My_Learning();
      case MenuItems.favorite:
        return Favorite();
      case MenuItems.notifications:
        return NotificationPage();
      case MenuItems.setting:
        return Setting();
      case MenuItems.register:
        return RegisterScreen();
      case MenuItems.aboutUs:
        return AboutUs();
      default:
        return Categories();
    }
    }
  }









  class MenuWidget extends StatelessWidget {
  @override
  Widget build (BuildContext context)=>
      IconButton(
      onPressed:() =>ZoomDrawer.of(context)?.toggle()?? print('null'),
      icon: Icon(
        Icons.menu,
        color: mobColor,
        size: 40,
      ),
  );
}









