import 'package:flutter/material.dart';

const Color color = Colors.black87;
const Color green = Colors.lightGreen;
 Color orange = Colors.blue.shade900;

double  Width(context) => MediaQuery.of(context).size.width;
double  Height(context)=>MediaQuery.of(context).size.height;


Widget textButtonItem({
  final void Function()? onPressed,
  String? text,
  Color? color,
}) {
  return TextButton(
      onPressed: onPressed,
      child: Text(
        text!,
        style: TextStyle(
            color: color, fontSize: 15, fontWeight: FontWeight.normal),
      ));
}

Widget textFormFieldItem({
  context,
  String? hintText,
  TextEditingController? controller,
  IconData? prefixIcon,
  double? bordRadius = 10,
  Function(String)? onSubmit,
  Function()? onTap,
}) {
  var Width = MediaQuery.of(context).size.width;
  return TextFormField(
    controller: controller,
    onFieldSubmitted: onSubmit,
    onTap: onTap,
    decoration: InputDecoration(
      hintText: hintText,
      prefixStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: Width*0.03,
        ),
        borderRadius: BorderRadius.circular(bordRadius!),
      ),
      prefixIcon: Icon(
        prefixIcon,
      ),
    ),
  );
}

Widget iconButton({
  IconData? icon,
  void Function()? function,
  Color? color,
}) {
  return IconButton(
    icon: Icon(
      icon,
      size: 25,
      color: color,
    ),
    onPressed: function,
  );
}

Widget ButtonItem({
  double? width,
  double? height,
  String? text,
  bool isUpperCase =true,
  double? borderRadius =10,
  final void Function()? onPressed,
  final Color? backgroundColor,
}){
  return Container(
    height: height,
    width:width,
    // padding:EdgeInsets.symmetric(vertical: 20,horizontal: 40),
    decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius!),
      color: backgroundColor,
    ),
    child: TextButton(
      onPressed: onPressed,
      child: Text(
        isUpperCase ? text!.toUpperCase(): text!,
        style: TextStyle(color:Colors.white),
      ),

    ),
  );
}




Widget iconButtonItems({
  IconData? icon,
  void Function()? function,
}) {
  return Stack(
    children: [
      iconButton(
        icon: icon,
        function: function,
        color: color,
      ),
      Container(
        width: 30,
        height: 30,
        alignment: Alignment.topRight,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: 20,
          height: 15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              // shape: BoxShape.circle,
              color: green,
              border: Border.all(color: Colors.white, width: 0.15)),
          child: Center(
            child: Text(
              '1',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget SizeBoxWidth(context) {
  return SizedBox(
    width: Width(context) * 0.008,
  );}
Widget SizeBoxHeight(context) {
  return SizedBox(
   height: Height(context) * 0.1,
  );}
TextStyle  WritingStyle (){
  return  TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );
}