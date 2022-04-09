
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class RightImage extends StatelessWidget {
   RightImage({Key? key}) : super(key: key);
// double height = 400;
// double width = 400;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height:400,
      width: 400,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow[300],
              shape: BoxShape.circle,
            ),
            width: 300,
            height:300,
            padding: EdgeInsets.all(5),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green[200],
                shape: BoxShape.circle,
              ),
              width: 130,
              height:200,
              padding: EdgeInsets.all(5),
            ),
          ),
          Image(
            image: AssetImage('web/assets/images/Student-PNG-Clipart.png'),
            height:350,
            width: 350,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber[200],
                borderRadius: BorderRadius.circular(10),
              ),
              transform:Matrix4.rotationZ(0.05),
              width: 350,
              height: 40,
            ),
          ),
        ],
      ),);

    //   Container(
    //   margin: EdgeInsets.all(30),
    //   padding: EdgeInsets.all(20),
    //   height: 400,
    //   width: 400,
    //   child: Stack(
    //     alignment: Alignment.bottomCenter,
    //     children: [
    //       CircleAvatar(
    //         backgroundColor: Colors.yellow[300],
    //         radius:200,
    //       ),
    //       Align(
    //         alignment: Alignment.bottomRight,
    //         child: CircleAvatar(
    //           backgroundColor:Colors.green[200],
    //           radius:80,
    //         ),
    //       ),
    //       SizedBox(
    //         height: height,
    //         width: width,
    //         child: Column(
    //           children: [
    //             Expanded(
    //               child: Image(
    //                 image: AssetImage('web/assets/images/Student-PNG-Clipart.png'),
    //                 height: height,
    //                 width: width,
    //               ),
    //             ),
    //             Container(
    //               color: Colors.amber[200],
    //               width: width,
    //               height: 40,
    //             ),
    //           ],
    //         ),
    //       ),
    //
    //     ],
    //   ),
    // );
  }
}
class MobRightImage extends StatelessWidget {
   MobRightImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height:270,
      width: 250,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            backgroundColor: Colors.yellow[300],
            radius:100,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              backgroundColor:Colors.green[200],
              radius:60,
            ),
          ),
          Image(
            image: AssetImage('web/assets/images/Student-PNG-Clipart.png'),
            height:300,
            width: 300,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber[200],
                borderRadius: BorderRadius.circular(10),
              ),
              transform:Matrix4.rotationZ(0.08),
              width: 350,
              height: 30,
            ),
          ),
        ],
      ),);
  }
}
