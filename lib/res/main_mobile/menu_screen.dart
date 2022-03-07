import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udeme_demo/res/component.dart';



class MenuPage extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  const MenuPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
}):super (key:key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Colors.blueGrey[300],
      body: SafeArea(
        child: Column(
          children: [
            DrawerHeader(
                child:Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('web/assets/images/user.png'),
                    maxRadius: 30,

                  ),
                ),
               ),
            ...MenuItems.all.map(buildMenuItem).toList(),
            Spacer(flex: 2,),
          ],),),);
  }
  Widget buildMenuItem(MenuItem item) => ListTileTheme(
    selectedColor: Colors.white,
    child: ListTile(
      selectedTileColor: Colors.blueGrey,
      selected: currentItem==item,
      minLeadingWidth:20,
      leading:Icon(item.icon,color: Colors.white ,size: 22),
      title:Text(item.title,style: TextStyle(color: Colors.white,fontSize: 25)),
      onTap:()=> onSelectedItem(item),
    ),
  );
}



class  MenuItem{
  final String title;
  final IconData icon;
  const MenuItem (this.title, this .icon);
}

class MenuItems{
  static const categories =  MenuItem('Categories',Icons.mediation_rounded);
  static const courses =  MenuItem('Courses',Icons.library_books_rounded);
  static const myLearning = MenuItem('My Learning',Icons.attach_file_sharp);
  static const favorite =  MenuItem('My Favorite',Icons.shopping_cart_outlined);
  static const notifications =  MenuItem('Notifications',Icons.notifications);
  static const setting =  MenuItem('Setting',Icons.settings);
  static const register =  MenuItem('Register',Icons.how_to_reg);
  static const aboutUs =  MenuItem('AboutUs',Icons.info_outline);


  static const all =<MenuItem>[
    categories,
    courses,
    myLearning,
    favorite,
    notifications,
    setting,
    register,
    aboutUs,
  ];
}