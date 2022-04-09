import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';

class MainDesktopRegister extends StatefulWidget {
  MainDesktopRegister({Key? key}) : super(key: key);

  @override
  _MainDesktopRegisterState createState() {
    return _MainDesktopRegisterState();
  }
}

class _MainDesktopRegisterState extends State<MainDesktopRegister> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


  var emailControl = TextEditingController();
  var nameControl = TextEditingController();
  var passwordControlF = TextEditingController();
  var passwordControlS = TextEditingController();
  var formKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:  titleRow(context: context,text: 'Register Now'),
        // leading: IconButton(
        //   onPressed:() => Get.toNamed(HOME),
        //   icon:Icon(
        //     Icons.menu,
        //     color: mobColor,
        //     size: 40,
        //   ),
        // ),
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