
import 'package:flutter/material.dart';

import '../../res/component.dart';

class RightImage extends StatelessWidget {
  const RightImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(20),
      height: Height(context)*0.5,
      width: Width(context)*0.3,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Stack (
            alignment: Alignment.topLeft,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.yellow[300],
                    radius:200,
                  ),
                  CircleAvatar(
                    backgroundColor:Colors.green[200],
                    radius:80,
                  ),
                ],
              ),
              Image(
                image: AssetImage('web/assets/images/Student-PNG-Clipart.png'),
                height: Height(context)*0.5,
                width: Width(context)*0.23,
              ),],),
          Container(
            color: Colors.amber[200],
            width: Width(context)*0.23,
            height: Height(context)*0.04,
          ),
        ],
      ),
    );
  }
}
