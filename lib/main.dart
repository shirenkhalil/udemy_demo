import 'package:flutter/material.dart';
import 'package:udeme_demo/home/main_home.dart';
import 'package:udeme_demo/res/component.dart';

import 'home/screen/home_page_desktop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home:MainHome(),
    );
  }
}



