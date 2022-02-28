import 'package:flutter/material.dart';

const Color color = Colors.black87;
const Color green = Colors.lightGreen;
 Color orange = Colors.blue.shade900;
 Color green1 = Colors.green.shade200;
 Color iconGreen = Colors.green.shade600;


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

// Widget textFormFieldItem({
//   context,
//   String? hintText,
//   TextEditingController? controller,
//   IconData? prefixIcon,
//   double? bordRadius = 10,
//   Function(String)? onSubmit,
//   Function()? onTap,
// }) {
//   var Width = MediaQuery.of(context).size.width;
//   return TextFormField(
//     controller: controller,
//     onFieldSubmitted: onSubmit,
//     onTap: onTap,
//     decoration: InputDecoration(
//       hintText: hintText,
//       prefixStyle: TextStyle(
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//       ),
//       border: OutlineInputBorder(
//         borderSide: BorderSide(
//           color: color,
//           width: Width*0.03,
//         ),
//         borderRadius: BorderRadius.circular(bordRadius!),
//       ),
//       prefixIcon: Icon(
//         prefixIcon,
//       ),
//     ),
//   );
// }

Widget textFormFieldItem({
  String? labelText,
  String? hintText,
  TextInputType? keyboardTextInputType,
  TextEditingController? controller,
  bool isPassword =false,
  IconData? prefixIcon,
  IconData? suffixIcon,
  double? bordRadius =10,
  Function ()? suffixPressed,
  Function (String)? onSubmit,
  Function (String)? onChange,
  Function ()? onTap,
  String? Function (String?)? validate,
   Color? iconColor ,
}) {
  return Padding(
    // padding: const EdgeInsets.all(15),
    padding: const EdgeInsets.only(bottom: 15,left: 20,right:20),
    child: TextFormField(
      validator: validate,
      controller: controller,
      onChanged: onChange,
      onFieldSubmitted: onSubmit,
      obscureText: isPassword,
      onTap: onTap,
      keyboardType: keyboardTextInputType,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        prefixStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        suffixStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(bordRadius!),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: green,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(bordRadius),
        ),
        enabledBorder:OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(bordRadius),
        ),
              prefixIcon: Icon(prefixIcon,color:iconColor),
        suffixIcon: suffixIcon != null ? IconButton(
          icon: Icon(suffixIcon,color: iconColor,),
          onPressed: suffixPressed,) : null,
      ),
    ),
  );
}


  Widget iconButton({
  IconData? icon,
  void Function()? onPressed,
  Color? color,
}) {
  return IconButton(
    icon: Icon(
      icon,
      size: 25,
      color: color,
    ),
    onPressed:onPressed,
  );
}

Widget ButtonItem({
  double? width=150,
  double? height=48,
  String? text,
  bool isUpperCase =true,
  double? borderRadius =10,
  double? elevation = 5,
  final void Function()? onPressed,
  final Color? backgroundColor = green,
}){
  return Container(
    height: height,
    width:width,
    decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius!),
      color: backgroundColor,
    ),
    child: TextButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(elevation),
      ),
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
        onPressed: function,
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
TextStyle  WritingStyle () {
  return TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );
}