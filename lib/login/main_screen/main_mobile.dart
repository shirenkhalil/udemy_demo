import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udeme_demo/main.dart';

import '../../res/component.dart';
import '../../res/main_mobile/zoom_drawer_mobile.dart';

class MainMobileLogin extends StatefulWidget {
  MainMobileLogin({Key? key}) : super(key: key);

  @override
  _MainMobileLoginState createState() {
    return _MainMobileLoginState();
  }
}

class _MainMobileLoginState extends State<MainMobileLogin> {
  var emailControl = TextEditingController();
  var passwordControl = TextEditingController();

  bool  isPassword =true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading:MenuWidget(),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          // padding: EdgeInsets.symmetric(vertical: Height(context)*0.008),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleRow(context: context,text: 'Register'),
              textFormFieldItem(
                controller: emailControl,
                prefixIcon: Icons.email_outlined,
                iconColor: mobColor,
                keyboardTextInputType: TextInputType.emailAddress,
                labelText: 'Enter your Email',
              ),
              textFormFieldItem(
                controller: passwordControl,
                onSubmit: (value){},
                isPassword: isPassword,
                keyboardTextInputType: TextInputType.number,
                labelText: 'Enter your Password',
                prefixIcon: Icons.lock_outline,
                suffixIcon: isPassword ?Icons.visibility_sharp: Icons.visibility_off_sharp,
                iconColor: mobColor,
                suffixPressed: () {
                  setState(() {
                    isPassword =!isPassword;
                  });},),
              SizedBox(height: 20,),
              ButtonItem(
                onPressed: () {},
                text: 'login',
                backgroundColor: mobColor,
              ),
              SizedBox(height:15,),
              ButtonItem(
                onPressed: () {
                  Get.toNamed(REGISTER);
                },
                text: 'Register',
                backgroundColor: mobColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}