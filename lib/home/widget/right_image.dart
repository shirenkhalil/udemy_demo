
import 'package:flutter/material.dart';

import '../../res/component.dart';

class RightImage extends StatelessWidget {
   RightImage({Key? key}) : super(key: key);
double height = 400;
double width = 400;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(20),
      height: 400,
      width: 400,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CircleAvatar(
            backgroundColor: Colors.yellow[300],
            radius:200,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              backgroundColor:Colors.green[200],
              radius:80,
            ),
          ),
          SizedBox(
            height: height,
            width: width,
            child: Column(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('web/assets/images/Student-PNG-Clipart.png'),
                    height: height,
                    width: width,
                  ),
                ),
                Container(
                  color: Colors.amber[200],
                  width: width,
                  height: 40,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
