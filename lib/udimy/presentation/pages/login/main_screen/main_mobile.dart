import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udeme_demo/main.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/main_mobile/zoom_drawer_mobile.dart';


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
  final formKey = GlobalKey<FormState>();
  bool  isPassword =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: titleRow(context: context,text: 'Login Now'),
        leading:MenuWidget(),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          // padding: EdgeInsets.symmetric(vertical: Height(context)*0.008),
          child: Form (
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login now to browser our hot offers',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                )
                ),
                SizedBox(height: 30,),
                textFormFieldItem(
                  validate: (value){
                    if(value ==null || value.isEmpty)
                    {return 'Please enter your email address';}
                    return null;
                  },
                  controller: emailControl,
                  prefixIcon: Icons.email_outlined,
                  iconColor: mobColor,
                  keyboardTextInputType: TextInputType.emailAddress,
                  labelText: 'Enter your Email',
                ),
                SizedBox(height: 20,),
                textFormFieldItem(
                  validate: (value){
                    if(value ==null || value.isEmpty)
                    {return 'Password is too short';}
                    return null;
                  },
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
                  onPressed: () {
                    if(formKey.currentState!.validate()){
                      print(emailControl.text);
                      print (passwordControl.text);
                    }
                  },
                  text: 'login',
                  backgroundColor: mobColor,
                  width: double.infinity,
                ),
                SizedBox(height:20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: (){
                          Get.toNamed(REGISTER);
                        },
                        child: Text('REGISTER',
                          style: TextStyle(
                            color: Colors.blueGrey[600],
                          ),
                        ))
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}