// ignore_for_file: prefer_const_constructors_in_immutables, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udeme_demo/main.dart';
import 'package:udeme_demo/udimy/domain/model/login/register_post.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
// ignore: unused_import
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';

class MainDesktopSetting extends StatefulWidget {
  MainDesktopSetting({Key? key}) : super(key: key);

  @override
  _MainDesktopSettingState createState() {
    return _MainDesktopSettingState();
  }
}

class _MainDesktopSettingState extends State<MainDesktopSetting> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var model = RegisterPostModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: titleRow(context: context,text: 'Setting'),
        elevation: 0,
        // leading:MenuWidget(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textNameFormItems(),
            SizedBox(height: 10,),
            textEmailFormItems(),
            SizedBox(height: 10,),
            textPhoneFormItems(),
            SizedBox(height: 30),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: blue,
              ),
              child: TextButton(
                  onPressed: ()=> Get.toNamed(HOME),
                  child: Text('LOGOUT',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

}
Future navigateAndFinish(context,widget){
  return Navigator.pushAndRemoveUntil
    (
    context,
    MaterialPageRoute( builder: (context)=> widget, ),
        (Route<dynamic> route) => true,
  );
}
Widget textPhoneFormItems(){
  var phoneController = TextEditingController();
  var model = RegisterPostModel();
  var text = (model.phone);
  return TextFormField(
    controller:phoneController ,
    enabled: false,
    decoration: InputDecoration(
      labelText: text != null ? '${model.phone}' : 'phone',
      labelStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      prefixStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),),
      prefixIcon: Icon(Icons.phone, ),
    ),




  );
}
Widget textEmailFormItems(){
  var emailController = TextEditingController();
  var model = RegisterPostModel();
  var text = (model.email);
  return TextFormField(
    controller:emailController ,
    enabled: false,
    decoration: InputDecoration(
      labelText: text != null ? '${model.email}' : 'Email',
      labelStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      prefixStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),),
      prefixIcon: Icon(Icons.email, ),
    ),




  );
}
Widget textNameFormItems(){
  var nameController = TextEditingController();
  var model = RegisterPostModel();
  var text = (model.name);
  return TextFormField(
    controller:nameController ,
    enabled: false,
    decoration: InputDecoration(
      labelText: text != null ? '${model.name}' : 'Name',
      labelStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      prefixStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),),
      prefixIcon: Icon(Icons.person, ),
    ),




  );
}