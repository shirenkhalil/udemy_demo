import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:udeme_demo/main.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';

class MainDesktopSearch extends StatefulWidget {
  MainDesktopSearch({Key? key}) : super(key: key);

  @override
  _MainDesktopSearchState createState() {
    return _MainDesktopSearchState();
  }
}

class _MainDesktopSearchState extends State<MainDesktopSearch> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  var textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: titleRow(context: context,text: 'Search'),
        // leading: IconButton(
        //   onPressed:() => ZoomDrawer.of(context)?.toggle() ?? Get.toNamed(HOME),
        //   icon:Icon(
        //     Icons.menu,
        //     color: mobColor,
        //     size: 40,
        //   ),
        // ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: Height(context)*0.008),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: Height(context) * 0.008,
                horizontal:Height(context) * 0.01 ),
            child: Column(
              children: [
                textFormFieldItem(
                  controller: textController,
                  onTap: () {},
                  prefixIcon: Icons.search_sharp,
                  hintText: 'Search for anything',
                  bordRadius: 30,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}