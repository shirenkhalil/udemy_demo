//
//
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:udeme_demo/udimy/presentation/pages/home/desktop_parts/course_item.dart';
// import 'package:udeme_demo/udimy/presentation/pages/home/desktop_parts/right_image.dart';
// import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
//
//
// import '../desktop_parts/appbar.dart';
// import '../desktop_parts/register.dart';
//
// class MainDesktopHome extends StatefulWidget {
//   const MainDesktopHome({Key? key}) : super(key: key);
//
//   @override
//   State<MainDesktopHome> createState() => _MainDesktopHomeState();
// }
//
// class _MainDesktopHomeState extends State<MainDesktopHome> {
//    int actionIndex=0;
//    final controller = CarouselController();
//
//   @override
//   Widget build(BuildContext context) {
//
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar:PreferredSize(
//             preferredSize: Size.fromHeight(70.0),
//         child:AppBarWidget() ,
//         ),
//         body: SingleChildScrollView (
//           child: Column(
//             children: [
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   void next()=> controller.nextPage(duration: Duration(milliseconds: 500));
//   void previous() => controller.previousPage(duration: Duration(milliseconds: 500));
//    Widget buildItem (int index)=> Center(child: WebCourseItem());
// }
//
