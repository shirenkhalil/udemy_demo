
// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class CatModel{
  String imageUrl,title;
  Color color;


  CatModel({
    required this.imageUrl, required this.title, required this.color
});

  static List<CatModel> catList =<CatModel> [
    CatModel(
        title: 'Science',
      color: Color(0xff99cae1),
      imageUrl:'web/assets/images/categ3.svg',
    ),
    CatModel(
        title: 'Arabic',
      color: Color(0xffe19999),
      imageUrl:'web/assets/images/categ3.svg',
    ),
    CatModel
      (title: 'English',
      color: Color(0xff9EE199),
      imageUrl:'web/assets/images/categ3.svg',
    ),
    CatModel(
      title: 'Math',
      color: Color(0xff99cae1),
      imageUrl:'web/assets/images/categ3.svg',
    ),
    CatModel(
      title: 'chemistry',
      color: Color(0xffe19999),
      imageUrl:'web/assets/images/categ3.svg',
    ),
    CatModel(
      title: 'pharmaceutical',
      color: Color(0xff9EE199),
      imageUrl:'web/assets/images/categ3.svg',
    ),
    CatModel(
      title: 'Engineering',
      color: Color(0xff99cae1),
      imageUrl:'web/assets/images/categ3.svg',
    ),
    CatModel(
        title: 'Biology',
      color: Color(0xffe19999),
      imageUrl:'web/assets/images/categ3.svg',
    ),
  ];


}



