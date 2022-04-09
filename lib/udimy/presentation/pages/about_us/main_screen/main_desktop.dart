import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';

class MainDesktopAboutUs extends StatefulWidget {
  MainDesktopAboutUs({Key? key}) : super(key: key);

  @override
  _MainDesktopAboutUsState createState() {
    return _MainDesktopAboutUsState();
  }
}

class _MainDesktopAboutUsState extends State<MainDesktopAboutUs> {
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
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: titleRow(context: context,text: 'about us'),
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}