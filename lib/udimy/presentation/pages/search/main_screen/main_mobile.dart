// ignore_for_file: unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:udeme_demo/udimy/data/data_sources/database/constant_data.dart';
import 'package:udeme_demo/udimy/domain/model/course/course_model.dart';
import 'package:udeme_demo/udimy/presentation/pages/cart/methods/get_cart_courses.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';



class MainMobileSearch extends StatefulWidget {
  const MainMobileSearch({Key? key}) : super(key: key);

  @override
  _MainMobileSearchState createState() {
    return _MainMobileSearchState();
  }
}

class _MainMobileSearchState extends State<MainMobileSearch> {

  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: titleRow(context: context,text: 'Search'),
        leading: IconButton(
          onPressed:() => ZoomDrawer.of(context)?.toggle(),
          icon:Icon(
            Icons.menu,
            color: mobColor,
            size: 40,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: Height(context)*0.008),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: Height(context) * 0.008,
                horizontal:Height(context) * 0.01 ),
            child: Column(
              children: [
                textFormFieldItem(
                  controller: textController,
                  keyboardTextInputType: TextInputType.text,
                  onSubmit: (String text){},
                  prefixIcon: Icons.search_sharp,
                  hintText: 'Search for anything',
                  bordRadius: 30,
                ),
                SizedBox(height: 10),
                // LinearProgressIndicator(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Widget buildCartItem(context, CourseModel course) {
  final oldPrice = '${course.oldPrice}';
  final newPrice = '${course.newPrice.round()}';
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

                        print('start');
                        // setState((){
                        //   course.isCart = !(course.isCart);
                        // });

                        print(course.isCart);
                        int index = courseList.indexWhere((element) => element.id == course.id);

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
