

import 'package:flutter/material.dart';
import 'package:udeme_demo/res/component.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Register extends StatelessWidget {
   Register({Key? key}) : super(key: key);
double height = 400;
double width = 400;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      padding: EdgeInsets.all(40),
      height:height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Professional and Lifelong Learning',
              style: TextStyle(
                color: orange,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
              maxLines: 2,
            ),
          ),
          SizedBox(height: Height(context)*0.04,),
          Text(
            'Build skills with courses , certificates,and degrees online from world-class universities.',
            style: WritingStyle(),
            maxLines: 2,
          ),
          SizedBox(height: Height(context)*0.04,),
          ButtonItem(
            text: 'register',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
