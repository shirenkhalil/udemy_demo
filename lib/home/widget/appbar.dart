

import 'package:flutter/material.dart';
import 'package:udeme_demo/res/component.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  AppBar build(BuildContext context) {
    var textController=TextEditingController();
    return AppBar(
      backgroundColor: Colors.white,
    flexibleSpace: Row(
      children: [
        Container(
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('web/assets/images/our courses .png'),
            ),
          ),
        ),
        SizeBoxWidth(context),
        textButtonItem(
          text: 'Categories',
          color: color,
          onPressed: (){},
        ),
        SizeBoxWidth(context),
        Expanded(
          child: textFormFieldItem(
            context: context,
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
          color: color,
          onPressed: (){},
        ),
        SizeBoxWidth(context),
        textButtonItem(
          text: 'Courses',
          color: color,
          onPressed: (){},
        ),
        SizeBoxWidth(context),
        textButtonItem(
          text: 'My learning',
          color: color,
          onPressed: (){},
        ),
        SizeBoxWidth(context),
        iconButtonItems(
          function: (){},
          icon: Icons.shopping_cart_outlined,
        ),
        iconButtonItems(
            function: (){},
            icon: Icons.notifications_none_outlined
        ),
        InkWell(
          onTap: (){},
          child: CircleAvatar(
            backgroundImage:  AssetImage('web/assets/images/user.png'),
            radius:20,
          ),
        ),
      ],
    ),
    /* flexibleSpace: Container(
      width: double.infinity,
    //  height:Height(context) *0.1 ,
      child: Row(
        children: [
          Container(
            width:Width(context)*0.1,
            height:Height (context)*0.1 ,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('web/assets/images/our courses .png'),
              ),
            ),
          ),
          SizeBoxWidth(context),
          textButtonItem(
            text: 'Categories',
            color: color,
            onPressed: (){},
          ),
          SizeBoxWidth(context),
          Expanded(
            child: Container(
              width: Width (context)*0.5,
              height:Height (context)*0.1,
              child: textFormFieldItem(
                context: context,
                controller:textController,
                onTap: (){},
                prefixIcon: Icons.search_sharp,
                hintText: 'Search for anything',
                bordRadius: 30,

              ),),
          ),
          SizeBoxWidth(context),
          textButtonItem(
            text: 'AboutUs',
            color: color,
            onPressed: (){},
          ),
          SizeBoxWidth(context),
          textButtonItem(
            text: 'Courses',
            color: color,
            onPressed: (){},
          ),
          SizeBoxWidth(context),
          textButtonItem(
            text: 'My learning',
            color: color,
            onPressed: (){},
          ),
          SizeBoxWidth(context),
          iconButtonItems(
            function: (){},
            icon: Icons.shopping_cart_outlined,
          ),
          iconButtonItems(
              function: (){},
              icon: Icons.notifications_none_outlined
          ),
          InkWell(
            onTap: (){},
            child: CircleAvatar(
              backgroundImage:  AssetImage('web/assets/images/user.png'),
              radius:20,
            ),
          ),
        ],
      ),
    ) ,*/
     /* title: Container(
        decoration: BoxDecoration(border:Border.all(color:Colors.black)),
        width: 200,
        //height:Height (context)*0.1,
        child: textFormFieldItem(
          context: context,
          controller:textController,
          onTap: (){},
          prefixIcon: Icons.search_sharp,
          hintText: 'Search for anything',
          bordRadius: 30,

        ),),*/
      /*leading: Container(
        width:Width(context)*0.1,
        height:Height (context)*0.1 ,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('web/assets/images/our courses .png'),
          ),
        ),
      ),
      actions: [
        SizeBoxWidth(context),
        textButtonItem(
          text: 'Categories',
          color: color,
          onPressed: (){},
        ),
        SizeBoxWidth(context),
        Expanded(
          child: Container(
            width: Width (context)*0.5,
            height:Height (context)*0.1,
            child: textFormFieldItem(
              context: context,
              controller:textController,
              onTap: (){},
              prefixIcon: Icons.search_sharp,
              hintText: 'Search for anything',
              bordRadius: 30,

            ),),
        ),
        SizeBoxWidth(context),
        textButtonItem(
          text: 'AboutUs',
          color: color,
          onPressed: (){},
        ),
        SizeBoxWidth(context),
        textButtonItem(
          text: 'Courses',
          color: color,
          onPressed: (){},
        ),
        SizeBoxWidth(context),
        textButtonItem(
          text: 'My learning',
          color: color,
          onPressed: (){},
        ),
        SizeBoxWidth(context),
        iconButtonItems(
          function: (){},
          icon: Icons.shopping_cart_outlined,
        ),
        iconButtonItems(
            function: (){},
            icon: Icons.notifications_none_outlined
        ),
        InkWell(
          onTap: (){},
          child: CircleAvatar(
            backgroundImage:  AssetImage('web/assets/images/user.png'),
            radius:20,
          ),
        )
      ],*/
    );
  }
}

