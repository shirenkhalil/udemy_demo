import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';

import '../../../../domain/model/course/course_model.dart';




Widget WebCourseItem (BuildContext context,CourseModel course) {
  final oldPrice ='${course.oldPrice}';
  final newPrice='${course.newPrice.round()}';
  final disPrice ='${course.disPrice}';
  final isFavorite = false.obs;
  final isCart = false.obs;
  final isLearn = false.obs;


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
      child:  Column(
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
              Text(
                '${course.title}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
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
              SizedBox(
                width: 3,
              ),
              Text(
                '${course.personName}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black,
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
                Container(
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

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                return IconButton(
                    padding:EdgeInsets.zero,
                    icon: isFavorite.value
                        ? Icon(Icons.favorite, color: Colors.red)
                        : Icon(Icons.favorite_border_outlined,
                        color: iconGreen),
                    onPressed: () {
                      isFavorite(!(isFavorite.value));
                      if(isLearn.value=true) isLearn(!(isLearn.value));
                      if(isCart.value=true) isCart(!(isCart.value));
                    });
              }),
              Obx(() {
                return IconButton(
                    padding:EdgeInsets.zero,
                    icon: isCart.value
                        ? Icon(Icons.shopping_cart, color: Colors.red)
                        : Icon(Icons.add_shopping_cart_outlined,
                        color: iconGreen),
                    onPressed: () {
                      isCart(!(isCart.value));
                      if(isFavorite.value=true) isFavorite(!(isFavorite.value));
                      if(isLearn.value=true) isLearn(!(isLearn.value));
                    });
              }),
              Obx(() {
                return TextButton(
                  onPressed: () {
                    isLearn(!(isLearn.value));
                    if(isCart.value=true) isCart(!(isCart.value));
                    if(isFavorite.value=true) isFavorite(!(isFavorite.value));
                  },
                  child:isLearn.value
                      ? Text('BUY', style: TextStyle(color: Colors.red,),)
                      : Text('BUY', style: TextStyle(color:iconGreen,),),
                );
              })
            ],
          ),
        ],
      ),
    ),
  );
}

Widget MobCourseItem (BuildContext context,CourseModel course) {
  final oldPrice ='${course.oldPrice}';
  final newPrice='${course.newPrice.round()}';
  final disPrice ='${course.disPrice}';
  final isFavorite = false.obs;
  final isCart = false.obs;
  final isLearn = false.obs;

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
    child: Column(
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
            Text(
              '${course.title}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
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
            SizedBox(
              width: 3,
            ),
            Text(
              '${course.personName}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black,
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
              Container(
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

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return IconButton(
                  padding:EdgeInsets.zero,
                  icon: isFavorite.value
                      ? Icon(Icons.favorite, color: Colors.red)
                      : Icon(Icons.favorite_border_outlined,
                      color: iconGreen),
                  onPressed: () {
                    isFavorite(!(isFavorite.value));
                    if(isLearn.value=true) isLearn(!(isLearn.value));
                    if(isCart.value=true) isCart(!(isCart.value));
                  });
            }),
            Obx(() {
              return IconButton(
                  padding:EdgeInsets.zero,
                  icon: isCart.value
                      ? Icon(Icons.shopping_cart, color: Colors.red)
                      : Icon(Icons.add_shopping_cart_outlined,
                      color: iconGreen),
                  onPressed: () {
                    isCart(!(isCart.value));
                    if(isFavorite.value=true) isFavorite(!(isFavorite.value));
                    if(isLearn.value=true) isLearn(!(isLearn.value));
                  });
            }),
            Obx(() {
              return TextButton(
                onPressed: () {
                  isLearn(!(isLearn.value));
                  if(isCart.value=true) isCart(!(isCart.value));
                  if(isFavorite.value=true) isFavorite(!(isFavorite.value));
                },
                child:isLearn.value
                    ? Text('BUY', style: TextStyle(color: Colors.red,),)
                    : Text('BUY', style: TextStyle(color:iconGreen,),),
              );
            })
          ],
        ),
      ],
    ),

  );
}

Widget CourseItem (BuildContext context,CourseModel course) {
  final oldPrice ='${course.oldPrice}';
  final newPrice='${course.newPrice.round()}';
  final disPrice ='${course.disPrice}';
  final isFavorite = false.obs;
  final isCart = false.obs;
  final isLearn = false.obs;

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
    child:Column(
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
              width:150 ,
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
            SizedBox(
              width: 3,
            ),
            Container(
              width: 120,
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
              Container(
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

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return IconButton(
                  padding:EdgeInsets.zero,
                  icon: isFavorite.value
                      ? Icon(Icons.favorite, color: Colors.red)
                      : Icon(Icons.favorite_border_outlined,
                      color: iconGreen),
                  onPressed: () {
                    isFavorite(!(isFavorite.value));
                    if(isLearn.value=true) isLearn(!(isLearn.value));
                    if(isCart.value=true) isCart(!(isCart.value));
                  });
            }),
            Obx(() {
              return IconButton(
                  padding:EdgeInsets.zero,
                  icon: isCart.value
                      ? Icon(Icons.shopping_cart, color: Colors.red)
                      : Icon(Icons.add_shopping_cart_outlined,
                      color: iconGreen),
                  onPressed: () {
                    isCart(!(isCart.value));
                    if(isFavorite.value=true) isFavorite(!(isFavorite.value));
                    if(isLearn.value=true) isLearn(!(isLearn.value));
                  });
            }),
            Obx(() {
              return TextButton(
                onPressed: () {
                  isLearn(!(isLearn.value));
                  if(isCart.value=true) isCart(!(isCart.value));
                  if(isFavorite.value=true) isFavorite(!(isFavorite.value));
                },
                child:isLearn.value
                    ? Text('BUY', style: TextStyle(color: Colors.red,),)
                    : Text('BUY', style: TextStyle(color:iconGreen,),),
              );
            })
          ],
        ),
      ],
    ),
  );
}