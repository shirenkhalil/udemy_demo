import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:udeme_demo/udimy/domain/model/login/login_get.dart';

const String SHAREDPREFERENCE_USER = "user";

class GetSharedPreference {
  GetStorage sharedPreferences;

  GetSharedPreference({required this.sharedPreferences});

  Future<void> setLoginData(LoginGetModel loginGetModel) async {
    print("insert data: " + jsonEncode(loginGetModel.toJson()));
    sharedPreferences.write(
        SHAREDPREFERENCE_USER, loginGetModel.toJson());
  }

  dynamic getLoginData() {
    if (sharedPreferences.read(SHAREDPREFERENCE_USER) != null) {
      print(" get data :" +
          LoginGetModel.fromJson(sharedPreferences.read(SHAREDPREFERENCE_USER))
              .toJson()
              .toString());
      return LoginGetModel.fromJson(
          sharedPreferences.read(SHAREDPREFERENCE_USER));
    } else {
      return null;
    }
  }
}
