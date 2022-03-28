

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:udeme_demo/main.dart';
import 'package:udeme_demo/udimy/presentation/pages/about_us/main_screen/main_desktop.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  AppBar build(BuildContext context) {
    var textController=TextEditingController();
    return AppBar(
      backgroundColor: Colors.white,
    flexibleSpace: Row(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        SizeBoxWidth(context),
        SizeBoxWidth(context),
        Container(
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('web/assets/images/our courses .png'),
              fit: BoxFit.cover
            ),
          ),
        ),
        SizeBoxWidth(context),
        SizeBoxWidth(context),
        Expanded(
          child: textFormFieldItem(
            // context: context,
            controller:textController,
            onTap: (){},
            prefixIcon: Icons.search_sharp,
            hintText: 'Search for anything',
            bordRadius: 30,

          ),
        ),
        SizeBoxWidth(context),
        textButtonItem(
          text: 'AboutUs',
          color: black,
          onPressed: (){
            Get.toNamed(ABOUT_US);
          },
        ),
        SizeBoxWidth(context),
        textButtonItem(
          text: 'Courses',
          color: black,
          onPressed: (){Get.toNamed(MY_COURSES);},
        ),
        SizeBoxWidth(context),
        textButtonItem(
          text: 'My learning',
          color: black,
          onPressed: (){Get.toNamed(MY_LEARNING);},
        ),
        SizeBoxWidth(context),
        iconButtonItems(
          function: (){Get.toNamed(CART);},
          icon: Icons.shopping_cart_outlined,
        ),
        iconButtonItems(
            function: (){Get.toNamed(NOTIFICATION);},
            icon: Icons.notifications_none_outlined
        ),
        InkWell(
          onTap: (){},
          child: CircleAvatar(
            backgroundImage:  AssetImage('web/assets/images/user.png'),
            radius:20,
          ),
        ),
        SizeBoxWidth(context),
        SizeBoxWidth(context),
      ],
    ),
    );
  }
}

