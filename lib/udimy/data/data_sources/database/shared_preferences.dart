import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';




const String SHAREDPREFERENCE_USER = "user";


class GetSharedPreference {
  GetStorage sharedPreferences ;

  GetSharedPreference({required this.sharedPreferences});

/*  Future<void> setLoginData(
      EmployeeData loginDataEntities) async {
    print("insert data: " + jsonEncode(loginDataEntities?.toJson()??null));
    sharedPreferences.write(SHAREDPREFERENCE_USER,loginDataEntities?.toJson()??null);
  }

  EmployeeData getLoginData() {
    if(sharedPreferences?.read(SHAREDPREFERENCE_USER)!= null){
      print(" get data :" +
          EmployeeData.fromJson(
              sharedPreferences?.read(SHAREDPREFERENCE_USER))
              .toJson()
              .toString());
      return EmployeeData.fromJson(
          sharedPreferences?.read(SHAREDPREFERENCE_USER));}else{
      return null;
    }
  }*/
}
