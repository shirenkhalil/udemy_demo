//
// import 'package:flutter/material.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
// import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';
//
//
// // ignore: must_be_immutable
// class MainMobileHome extends StatefulWidget {
//
//   @override
//   State<MainMobileHome> createState() => MainMobileHomeState();
// }
//
// class MainMobileHomeState extends State<MainMobileHome> {
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           leading:MenuWidget(),
//         ),
//         body: SingleChildScrollView(
//           padding: EdgeInsets.symmetric(vertical: Height(context)*0.008),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               titleRow(context: context,text: 'our courses'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }