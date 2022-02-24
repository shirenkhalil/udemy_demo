

import 'package:flutter/material.dart';
import 'package:udeme_demo/res/component.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      padding: EdgeInsets.all(40),
      height: Height(context)*0.5,
      width: Width(context)*0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
            backgroundColor: green,
            text: 'register',
            onPressed: (){},
            isUpperCase: true,
            height: Height(context)*0.05,
            width:Width(context)*0.13 ,
            borderRadius: 10,
          ),
          SizedBox(height: Height(context)*0.04,),
          Row(
            children: [
              Container(


              ),
            ],
          ),
        ],
      ),
    );
  }
}
