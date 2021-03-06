
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udeme_demo/main.dart';
import 'package:udeme_demo/udimy/domain/model/login/login_get.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';




class MenuPage extends StatelessWidget {

  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
   MenuPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
}):super (key:key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Colors.blueGrey[300],
      body: SafeArea(
        child: ListView(
          children: [
            buildHeader(User()),
            ...MenuItems.all.map(buildMenuItem).toList(),
          //  Spacer(flex:2,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0,),
              child: Row(
                children: [
                  Icon(
                    Icons.exit_to_app ,color: Colors.white,
                  ),
                 SizedBox(width:5,),
                  textButtonItem(
                    onPressed: ()=> Get.toNamed(HOME),
                    color: Colors.white,
                    text: 'LOGOUT',
                    size: 25,),],),),
          ],),),);
  }


  Widget buildMenuItem(MenuItem item) => ListTileTheme(
    selectedColor: Colors.white,
    child: ListTile(
      selectedTileColor: Colors.blueGrey,
      selected: currentItem==item,
      minLeadingWidth: 10,
      leading:Icon(item.icon,color: Colors.white ,size: 18),
      title:Text(item.title,style: TextStyle(color: Colors.white,fontSize: 20)),
      onTap:()=> onSelectedItem(item),
    ),
  );


  Widget buildHeader (User user)=> DrawerHeader(
    child:Align(
      alignment: Alignment.topLeft,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          CircleAvatar(
            // backgroundImage: NetworkImage('${user.img}'),
            backgroundImage: NetworkImage('https://img.lovepik.com/photo/20211119/small/lovepik-personal-image-picture_500196564.jpg'),
            maxRadius:40,
          ),
          Spacer(),
          Text(
            'Hi , ${user.name}',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),),
          Text(
            'Welcome back ',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),),
        ],),),);
}



class  MenuItem{
  final String title;
  final IconData icon;
  const MenuItem (this.title, this .icon);
}

class MenuItems{
  static const home =  MenuItem('Home',Icons.home);
  static const categories =  MenuItem('Categories',Icons.list_outlined);
  static const courses =  MenuItem('Courses',Icons.library_books_rounded);
  static const myLearning = MenuItem('My Learning',Icons.file_copy_outlined);
  static const myCart =  MenuItem('My Cart',Icons.shopping_cart_outlined);
  static const notifications =  MenuItem('Notifications',Icons.notifications);
  static const setting =  MenuItem('Setting',Icons.settings);
  static const login =  MenuItem('Login',Icons.how_to_reg);
  static const aboutUs =  MenuItem('AboutUs',Icons.info_outline);
  static const search = MenuItem('search', Icons.search);
  static const register = MenuItem('register', Icons.add);


  static const all =<MenuItem>[
    home,
    categories,
    courses,
    myLearning,
    myCart,
    notifications,
    setting,
    login,
    search,
    aboutUs,
  ];
}

