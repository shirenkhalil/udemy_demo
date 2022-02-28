
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udeme_demo/res/component.dart';


// ignore: must_be_immutable
class HomePageMobile extends StatefulWidget {
   HomePageMobile({Key? key}) : super(key: key);

  @override
  State<HomePageMobile> createState() => HomePageMobileState();
}

class HomePageMobileState extends State<HomePageMobile> {
var emailControl = TextEditingController();
var passwordControl = TextEditingController();

 bool  isPassword =true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: green1,
        appBar: AppBar(
          backgroundColor: green1,
          elevation: 0,
          leading: iconButton(
              icon: Icons.menu,
              color: iconGreen,
              onPressed: () => ZoomDrawer.of(context)!.toggle(),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: Height(context)*0.008),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Our Courses',
                style: GoogleFonts.bebasNeue(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),

              ),
              Image(image: AssetImage('web/assets/images/our courses .png')),
              textFormFieldItem(
                controller: emailControl,
                prefixIcon: Icons.email_outlined,
                iconColor: iconGreen,
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
                iconColor: iconGreen,
               suffixPressed: () {
                  setState(() {
                    isPassword =!isPassword;
                  });},),
              SizedBox(height: 20,),
              ButtonItem(
                onPressed: () {},
                text: 'login',
              ),
              SizedBox(height:15,),
              ButtonItem(
                onPressed: () {},
                text: 'Register',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
