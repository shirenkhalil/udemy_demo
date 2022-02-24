
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:udeme_demo/home/widget/right_image.dart';
import 'package:udeme_demo/res/component.dart';

import '../widget/appbar.dart';
import '../widget/register.dart';

class HomePageTablet extends StatelessWidget {
  const HomePageTablet({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView (
          child: Column(
            children: [
             AppBar(),
              SizeBoxHeight(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Register(),
                  SizedBox(width: Width(context)*0.15),
                 RightImage(),
                ],
              ),
              SizeBoxHeight(context),
              Text(
                'Browser our Top courses',
                style: TextStyle(
                  color: orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


