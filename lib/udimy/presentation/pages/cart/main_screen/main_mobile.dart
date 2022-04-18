// ignore_for_file: avoid_print, duplicate_ignore, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udeme_demo/payment.dart';
import 'package:udeme_demo/udimy/data/data_sources/database/constant_data.dart';
import 'package:udeme_demo/udimy/domain/model/course/course_model.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';


class MainMobileCart extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
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
    double allPrice = getTotal(coursesListCart);
    final paymentController = Get.put(PaymentController());
    CourseModel course;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: titleRow(context: context,text: 'MY CART'),
        elevation: 0,
        leading:  MenuWidget(),
      ),
      body: SingleChildScrollView(
        physics:BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context,index)=> buildCartItem(context, getCoursesListCart()[index]),
                separatorBuilder:(context,index)=> Divider(
                  color: mobColor,
                  thickness: 3,
                  indent:20,
                  endIndent: 20,
                ),
                itemCount: getCoursesListCart().length,
              ),
              Divider(
                color: mobColor,
                thickness: 3,
                indent:20,
                endIndent: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('TOTAL:',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('$total items',style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),),
                  ),
                  Spacer(),
                  Text(
                      '${allPrice.toPrecision(2)}',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),),
                ],
              ),
              Container(
              margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: blue,
                 borderRadius: BorderRadius.circular(5),
                ),
                child: textButtonItem(
                    onPressed: (){
                      paymentController.makePayment(
                          amount:'5',
                          currency :'USD');

                      // totalList (coursesListCart,coursesListMyLearning);
                    },
                  text: 'BuyNow',
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



  Widget buildCartItem(context, CourseModel course) {
    final oldPrice = '${course.oldPrice}';
    final newPrice = '${course.newPrice.toPrecision(1)}';
    final disPrice = '${course.disPrice}';
    return Container(
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
              course.image,
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
                      newPrice,
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // if(model.discount !=0)

                    // ignore: unrelated_type_equality_checks
                    if (disPrice != 0)
                      Text(
                        oldPrice,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    Spacer(),
                    // ignore: unrelated_type_equality_checks
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
                  course.title,
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
                    Spacer(),
                    IconButton(
                      padding: EdgeInsets.zero,
                        icon: course.isCart
                            ? Icon(Icons.delete_outline, color: iconGreen)
                            : Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          // ignore: avoid_print
                         print('start');
                          setState((){
                            course.isCart = !(course.isCart);
                          });
                         // ignore: avoid_print
                          print(course.isCart);
                          int index = courseList.indexWhere((element) => element.id == course.id);
                         // ignore: avoid_print
                          print(course.isCart);
                          if (course.isCart) {
                            courseList[index].isCart = true;
                            coursesListCart.add(course);

                          } else {
                            courseList[index].isCart = false;
                            coursesListCart.remove(course);
                          }
                        }),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  // var count = coursesListCart.where((c) => c.id == coursesListCart.length).toList().length;
  var total = coursesListCart.length;
 // ignore: use_function_type_syntax_for_parameters
  }



