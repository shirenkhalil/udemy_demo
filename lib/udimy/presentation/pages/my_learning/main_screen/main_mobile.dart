import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/domain/model/course/course_model.dart';
import 'package:udeme_demo/udimy/presentation/pages/cart/methods/get_cart_courses.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';



class MainMobileMyLearning extends StatefulWidget {
  MainMobileMyLearning({Key? key}) : super(key: key);

  @override
  _MainMobileMyLearningState createState() {
    return _MainMobileMyLearningState();
  }
}

class _MainMobileMyLearningState extends State<MainMobileMyLearning> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: titleRow(context: context,text: 'MY Learning'),
        elevation: 0,
        leading:  MenuWidget(),
      ),
      body: ListView.separated(
        itemBuilder: (context,index)=> buildMyLearning(context, getMyLearningCourses()[index]),
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
  Widget buildMyLearning(context,CourseModel course){
    return  Container(
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
              color: Colors.red,
            ),
            child: Image.asset(
              '${course.image}',
              fit:BoxFit.cover ,
            ),
          ),
          SizedBox(width: 6),
          // Expanded(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         '${course.title}',
          //         maxLines: 1,
          //         overflow: TextOverflow.ellipsis,
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 18,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       Text(
          //         '${course.description}',
          //         maxLines: 2,
          //         overflow: TextOverflow.ellipsis,
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 18,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       Row(
          //         children: [
          //           Spacer(),
          //           IconButton(
          //               padding: EdgeInsets.zero,
          //               icon: Icon(Icons.arrow_forward_ios,
          //                 color: Colors.grey[800],size: 20),
          //               onPressed: (){
          //
          //               }
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );

  }
}