import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udeme_demo/main.dart';
import 'package:udeme_demo/udimy/domain/model/login/register_post.dart';
import 'package:udeme_demo/udimy/presentation/pages/register/methods/register.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';


class MainMobileRegister extends StatefulWidget {
  MainMobileRegister({Key? key}) : super(key: key);


  @override
  _MainMobileRegisterState createState() {
    return _MainMobileRegisterState();
  }

  static  get(BuildContext context) {}
}

class _MainMobileRegisterState extends State<MainMobileRegister> {

  var emailControl = TextEditingController();
  var nameControl = TextEditingController();
  var phoneControl = TextEditingController();
  var passwordControlF = TextEditingController();
  var passwordControlS = TextEditingController();
  var formKey =GlobalKey<FormState>();
  RegisterPostModel registerPostModel = RegisterPostModel();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:  titleRow(context: context,text: 'Register Now'),
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
        padding: EdgeInsets.symmetric(vertical: Height(context)*0.09,horizontal: Width(context)*0.03),
        child: Form (
          key: formKey,
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              textFormFieldItem(
                validate: (value){
                  if(value==null ||value.isEmpty){
                    return'please enter your name';
                  }return null;
                },
                onChange: (value){
                  registerPostModel.name = value;
                },
                controller: nameControl,
                prefixIcon: Icons.person_add,

                iconColor: mobColor,
                keyboardTextInputType: TextInputType.emailAddress,
                labelText: 'Enter your Name',
              ),
              SizedBox(height: 20,),
              textFormFieldItem(
                validate: (value){
                  if(value==null ||value.isEmpty){
                    return 'please enter your email';}
                  return null;
                  },
                onChange: (value){
                  registerPostModel.phone = value;
                },
                controller: phoneControl,
                prefixIcon: Icons.phone,
                iconColor: mobColor,
                keyboardTextInputType: TextInputType.phone,
                labelText: 'Enter your phone',
              ),
              SizedBox(height: 20,),
              textFormFieldItem(
                validate: (value){
                  if(value==null ||value.isEmpty){
                    return 'please enter your email';}
                  return null;
                },
                onChange: (value){
                  registerPostModel.email = value;
                },
                controller: emailControl,
                prefixIcon: Icons.email_outlined,
                iconColor: mobColor,
                keyboardTextInputType: TextInputType.emailAddress,
                labelText: 'Enter your Email',
              ),
              SizedBox(height: 20,),
              textFormFieldItem(
                validate: (value){if(value==null || value.isEmpty)
                {return 'your password is too short';}
                  return null;
                },
                onChange: (value){
                  registerPostModel.password = value;
                },
                controller: passwordControlF,
                prefixIcon: Icons.lock,
                iconColor: mobColor,
                keyboardTextInputType: TextInputType.visiblePassword,
                labelText: 'Enter your Password',
              ),
              SizedBox(height: 20,),
              textFormFieldItem(
                validate: (value){
                  if(value==null ||value.isEmpty){
                    return 'your password is too short';}
                  if(value!=passwordControlF.text){return'your password is not right';}
                  return null;
                },
                controller: passwordControlS,
                prefixIcon: Icons.lock,
                iconColor: mobColor,
                keyboardTextInputType: TextInputType.visiblePassword,
                labelText: 'Re-Enter your Password',
                onSubmit: (value){},
              ),
              SizedBox(height: 20,),
              ButtonItem(
                onPressed: () {
                  if(formKey.currentState!.validate()){
                    print(emailControl.text);
                    print(nameControl.text);
                    print (passwordControlF.text);
                    registerMethods(registerPostModel);
                  }
                },
                text: 'register now',
                backgroundColor: mobColor,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

