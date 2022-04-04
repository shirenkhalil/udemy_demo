import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:udeme_demo/udimy/data/data_sources/database/constant_data.dart';
import 'package:udeme_demo/udimy/domain/model/categories/categories_model.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';

import '../../../../domain/model/course/course_model.dart';
import '../../../../domain/model/course/course_model.dart';

Widget WebCourseItem(BuildContext context, CourseModel course) {
  return SingleChildScrollView(
    child: Container(
      height: 320,
      width: 300,
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.blue[900]!, blurRadius: 5),
          ]),
      child: BuildCourseItem(context, course),
    ),
  );
}

Widget MobCourseItem(BuildContext context, CourseModel course) {
  return Container(
    height: 280,
    width: 260,
    padding: EdgeInsets.all(5),
    margin: EdgeInsets.symmetric(horizontal: 1),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.blue[900]!, blurRadius: 5),
        ]),
    child: BuildCourseItem(context, course),
  );
}

Widget CourseItem(BuildContext context, CourseModel course) {
  return Container(
    // width: 50,
    // height: 50,
    padding: EdgeInsets.all(5),
    margin: EdgeInsets.symmetric(horizontal: 1),
    decoration: BoxDecoration(
        color: Colors.white,
        // color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.blue[900]!, blurRadius: 5),
        ]),
    child: BuildCourseItem(context, course),
  );
}

Widget BuildCourseItem(BuildContext context, CourseModel course) {
  final oldPrice = '${course.oldPrice}';
  final newPrice = '${course.newPrice.round()}';
  final disPrice = '${course.disPrice}';
  //final courses = course.obs;
  Map<int, bool> favorites = {};
  return StatefulBuilder(
    builder: (context,setState) {
      return Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // height:150,
              // width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(
                    '${course.image}',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 150,
                child: Text(
                  '${course.title}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('${course.personImage}'),
                radius: 20,
              ),
              Spacer(),
              Expanded(
                child: Text(
                  '${course.personName}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(height: 20,),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '$newPrice',
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  // if(model.discount !=0)
                  if (disPrice != 0)
                    Text(
                      '$oldPrice',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 13,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
              Spacer(),
              if (disPrice != 0)
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(3),
                    color: Colors.green[100],
                    child: Text(
                      'Bestseller',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Row(
            children: [
              /*   Obx(() {
                return IconButton(
                    icon: isFavorite.value
                        ? Icon(Icons.favorite, color: Colors.red)
                        : Icon(Icons.favorite_border_outlined, color: iconGreen),
                    onPressed: () {
                      isFavorite(!(isFavorite.value));
                      // if(isLearn.value=true) isLearn(!(isLearn.value));
                      // if(isCart.value=true) isCart(!(isCart.value));
                    });
              }),*/
              Spacer(),
              IconButton(
                  icon: course.isCart
                      ? Icon(Icons.shopping_cart, color: Colors.red)
                      : Icon(Icons.add_shopping_cart_outlined, color: iconGreen),
                  onPressed: () {
                    print('start');
                   setState((){
                     course.isCart = !(course.isCart);
                   });
                    print(course.isCart);
                    int index =
                        courseList.indexWhere((element) => element.id == course.id);
                    print(course.isCart);
                    if (course.isCart) {
                      courseList[index].isCart = true;
                      coursesListCart.add(course);
                    } else {
                      courseList[index].isCart = false;
                      coursesListCart.remove(course);
                    }
                  }),
              // Obx(() {
              //   return TextButton(
              //     onPressed: () {
              //       isLearn(!(isLearn.value));
              //     },
              //     child:isLearn.value
              //         ? Text('BUY', style: TextStyle(color: Colors.red,),)
              //         : Text('BUY', style: TextStyle(color:iconGreen,),),
              //   );
              // })
            ],
          ),
        ],
      );
    }
  );
}
