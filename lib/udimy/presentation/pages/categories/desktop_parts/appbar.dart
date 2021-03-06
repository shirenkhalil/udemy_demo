

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:udeme_demo/main.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';

import '../../../../domain/model/login/login_get.dart';

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
        UserAccount(User()),
        SizeBoxWidth(context),
        SizeBoxWidth(context),
      ],
    ),
    );
  }
  Widget UserAccount(User user)=> InkWell(
    onTap: (){},
    child: CircleAvatar(
      backgroundImage:  AssetImage('${user.img}'),
      radius:20,
    ),
  );
}

