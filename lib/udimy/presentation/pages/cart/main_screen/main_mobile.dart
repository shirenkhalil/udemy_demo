
import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/data/data_sources/database/constant_data.dart';
import 'package:udeme_demo/udimy/domain/model/course/course_model.dart';
import 'package:udeme_demo/udimy/presentation/pages/cart/methods/get_cart_courses.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';


class MainMobileCart extends StatefulWidget {
  MainMobileCart({Key? key}) : super(key: key);

  @override
  _MainMobileCartState createState() {
    return _MainMobileCartState();
  }
}

class _MainMobileCartState extends State<MainMobileCart> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: titleRow(context: context,text: 'MY CART'),
        elevation: 0,
        leading:  MenuWidget(),
      ),
      body: ListView.separated(
        itemBuilder: (context,index)=> buildCartItem(context,getCartCourses()[index]),
        separatorBuilder:(context,index)=> Divider(
          color: mobColor,
          thickness: 3,
          indent:20,
          endIndent: 20,
        ),
        itemCount: getCartCourses().length,
      ),
    );
  }
  Widget buildCartItem(context, CourseModel course) {
    final oldPrice = '${course.oldPrice}';
    final newPrice = '${course.newPrice.round()}';
    final disPrice = '${course.disPrice}';
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:12,vertical:6),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          // color: Colors.grey,
        ),
        child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                '${course.image}',
                fit:BoxFit.cover ,
              ),
            ),
            SizedBox(width: 6),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '$newPrice',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // if(model.discount !=0)
                      if (disPrice != 0)
                        Text(
                          '$oldPrice',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      Spacer(),
                      if (disPrice != 0)
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.green[100],
                          ),
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
                  Spacer(),
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
                  Row(
                    children: [
                      TextButton(
                          child: Text(
                            'BuyNow',
                            style: TextStyle(
                              color: iconGreen,
                              fontWeight: FontWeight.bold,
                              fontSize:19,
                            ),
                          ),
                          onPressed: () {
                            setState((){});

                          }),
                      Spacer(),
                      IconButton(
                        padding: EdgeInsets.zero,
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
                              // coursesListMyLearning.add(course);
                            } else {
                              courseList[index].isCart = false;
                              coursesListCart.remove(course);
                              // coursesListMyLearning.remove(course);
                            }
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
