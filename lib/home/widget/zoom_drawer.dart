import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:udeme_demo/home/screen/home_page_mobile.dart';
import 'package:udeme_demo/res/component.dart';


// final ZoomDrawerController z = ZoomDrawerController();

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) => ZoomDrawer(
    mainScreen: HomePageMobile(),
    menuScreen:MenuPage() ,
    style: DrawerStyle.Style1,

  );
}




class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
    );
  }
}

// class MenuWidget extends StatelessWidget {
//   @override
//   Widget build (BuildContext context)=> IconButton(
//       onPressed:() => ZoomDrawer.of(context)!.toggle(),
//       icon: Icon(
//         Icons.menu,
//         color: iconGreen,
//       ),
//   );
//
// }