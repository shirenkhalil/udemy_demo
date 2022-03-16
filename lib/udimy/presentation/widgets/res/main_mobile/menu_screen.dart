import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        child: Column(
          children: [
            DrawerHeader(
                child:Align(
                  alignment: Alignment.topLeft,
                  child:Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      CircleAvatar(
                        backgroundImage: AssetImage('web/assets/images/user.png'),
                        maxRadius:40,
                      ),
                      Spacer(),
                      Text(
                          'Hi , NAME',
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
                    ],),),),

            ...MenuItems.all.map(buildMenuItem).toList(),
            Spacer(flex: 2,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.exit_to_app ,color: Colors.white,
                  ),
                 SizedBox(width:5,),
                  textButtonItem(
                    onPressed: (){},
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
      minLeadingWidth:10,
      leading:Icon(item.icon,color: Colors.white ,size: 18),
      title:Text(item.title,style: TextStyle(color: Colors.white,fontSize: 20)),
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
  static const categories =  MenuItem('Categories',Icons.home);
  static const courses =  MenuItem('Courses',Icons.library_books_rounded);
  static const myLearning = MenuItem('My Learning',Icons.attach_file_sharp);
  static const favorite =  MenuItem('My Favorite',Icons.shopping_cart_outlined);
  static const notifications =  MenuItem('Notifications',Icons.notifications);
  static const setting =  MenuItem('Setting',Icons.settings);
  static const login =  MenuItem('Login',Icons.how_to_reg);
  static const aboutUs =  MenuItem('AboutUs',Icons.info_outline);
  static const search = MenuItem('search', Icons.search);


  static const all =<MenuItem>[
    categories,
    courses,
    myLearning,
    favorite,
    notifications,
    setting,
    login,
    search,
    aboutUs,
  ];
}

