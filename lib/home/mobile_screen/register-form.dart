
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udeme_demo/home/main_screen/home_zoom_drawer_mobile.dart';
import 'package:udeme_demo/home/mobile_screen/categories.dart';
import 'package:udeme_demo/home/mobile_screen/menu_screen.dart';
import 'package:udeme_demo/res/component.dart';

// ignore: must_be_immutable
class RegisterForm extends StatefulWidget {

  @override
  State<RegisterForm> createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
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
            onPressed:() => Get.to(()=>HomePageMobile()),
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