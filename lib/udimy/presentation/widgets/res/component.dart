import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color black = Colors.black87;
const Color green = Colors.lightGreen;
Color blue = Colors.blue.shade900;
Color green1 = Colors.green.shade200;
Color iconGreen = Colors.green.shade600;
Color mobColor = Colors.blueGrey[300]!;

double Width(context) => MediaQuery.of(context).size.width;

double Height(context) => MediaQuery.of(context).size.height;

void unfocus(BuildContext context) {
  FocusScope.of(context).unfocus();
}

Widget textButtonItem({
  final void Function()? onPressed,
  String? text,
  Color? color,
  double? size = 15,

}) {
  return TextButton(
      onPressed: onPressed,
      child: Container(
        child: Text(
          text!,
          style: TextStyle(
              color: color, fontSize: size, fontWeight: FontWeight.normal),
        ),
      ));
}

Widget titleText({
  String? text,
}) {
  return Text(text!,
      style: GoogleFonts.bebasNeue(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 35,
      ));
}

Widget logoImage(
  context,
) {
  return Image(
    image: AssetImage('web/assets/images/ourbooks .png'),
    height: 100,
    width: 100,
    fit: BoxFit.fill,
  );
}

Widget titleRow({
  context,
  String? text,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 8,),
    child: Row(
      children: [
        Container(
            // padding: EdgeInsets.all(20),
            child: titleText(
              text: text,
            )),
       Spacer(),
        logoImage(context,),

      ],
    ),
  );
}

Widget textFormFieldItem({
  String? labelText,
  String? hintText,
  TextInputType? keyboardTextInputType,
  TextEditingController? controller,
  bool isPassword = false,
  IconData? prefixIcon,
  IconData? suffixIcon,
  double? bordRadius = 10,
  Function()? suffixPressed,
  Function(String)? onSubmit,
  Function(String)? onChange,
  Function()? onTap,
  String? Function(String?)? validate,
  Color? iconColor,
  double bottom =15,
  double left =20,
  double right =20,
  double top =0,
}) {
  return TextFormField(
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
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(bordRadius),
      ),
      prefixIcon: Icon(prefixIcon, color: iconColor),
      suffixIcon: suffixIcon != null ? IconButton(
              icon: Icon(
                suffixIcon,
                color: iconColor,
              ),
              onPressed: suffixPressed,
            ) : null,
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
      size: 30,
      color: color,
    ),
    onPressed: onPressed,
  );
}

Widget ButtonItem({
  double? width = 150,
  double? height = 48,
  String? text,
  bool isUpperCase = true,
  double? borderRadius = 10,
  double? elevation = 5,
  final void Function()? onPressed,
  final Color? backgroundColor = green,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius!),
      color: backgroundColor,
    ),
    child: TextButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(elevation),
      ),
      onPressed: onPressed,
      child: Text(
        isUpperCase ? text!.toUpperCase() : text!,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget ButtonCategoriesItem({
  double? width = 130,
  double? height = 48,
  String? text,
  bool isUpperCase = true,
  double? borderRadius = 20,
  double? elevation = 5,
  final void Function()? onPressed,
  context,

}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius!),
      color: green1,
      border:Border.all(color: iconGreen,width: 3, ),
    ),
    child: TextButton(
      onPressed: onPressed,
      child: Text(
        isUpperCase ? text!.toUpperCase() : text!,
        style: TextStyle(color:black,fontSize: 20,),
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
        color:black,
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
  );
}

Widget SizeBoxHeight(context) {
  return SizedBox(
    height: Height(context) * 0.1,
  );
}

TextStyle WritingStyle() {
  return TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );
}
