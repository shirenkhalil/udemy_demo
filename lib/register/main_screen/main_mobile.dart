import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udeme_demo/main.dart';

import '../../res/component.dart';
import '../../res/main_mobile/zoom_drawer_mobile.dart';

class MainMobileRegister extends StatefulWidget {
  MainMobileRegister({Key? key}) : super(key: key);

  @override
  _MainMobileRegisterState createState() {
    return _MainMobileRegisterState();
  }
}

class _MainMobileRegisterState extends State<MainMobileRegister> {
  var emailControl = TextEditingController();
  var nameControl = TextEditingController();
  var passwordControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          // MenuWidget(),
          leading: IconButton(
            onPressed:() => Get.toNamed(HOME),
            icon:Icon(
              Icons.menu,
              color: mobColor,
              size: 40,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: Height(context)*0.008),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleRow(context: context,text: 'Register Now'),
              textFormFieldItem(
                controller: nameControl,
                prefixIcon: Icons.person_add,

                iconColor: mobColor,
                keyboardTextInputType: TextInputType.emailAddress,
                labelText: 'Enter your Name',
              ),
              textFormFieldItem(
                controller: emailControl,
                prefixIcon: Icons.email_outlined,
                iconColor: mobColor,
                keyboardTextInputType: TextInputType.emailAddress,
                labelText: 'Enter your Email',
              ),
              textFormFieldItem(
                controller: passwordControl,
                prefixIcon: Icons.lock,
                iconColor: mobColor,
                keyboardTextInputType: TextInputType.emailAddress,
                labelText: 'Enter your Password',
              ),
              textFormFieldItem(
                controller: passwordControl,
                prefixIcon: Icons.lock,
                iconColor: mobColor,
                keyboardTextInputType: TextInputType.emailAddress,
                labelText: 'Re-Enter your Password',
              ),
            ],
          ),
        ),
      ),
    );
  }
}