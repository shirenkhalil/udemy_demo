import 'package:flutter/cupertino.dart';
import 'package:udeme_demo/udimy/data/data_sources/api/dio_remote.dart';
import 'package:udeme_demo/udimy/data/data_sources/database/shared_preferences.dart';
import 'package:udeme_demo/udimy/domain/model/login/login_get.dart';
import 'package:udeme_demo/udimy/domain/model/login/login_post.dart';
import 'package:udeme_demo/udimy/domain/model/login/register_post.dart';
import 'package:udeme_demo/udimy/domain/repositories/domain_repositry.dart';

class DataRepositry extends DomainRepositry {
  DioRemote dioRemote;
  GetSharedPreference getSharedPreference;

  DataRepositry({
    required this.dioRemote,
    required this.getSharedPreference,
  });

  @override
  testExample() {
    return dioRemote.test();
  }

  @override
  Future login(LoginPostModel loginPostModel) {
   return dioRemote.login(loginPostModel);
  }

  @override
  getLoginData() {
    return getSharedPreference.getLoginData();
  }

  @override
  Future<void> setLoginData(LoginGetModel loginGetModel) {
    return getSharedPreference.setLoginData(loginGetModel);
  }

  @override
  Future register(RegisterPostModel registerPostModel) {
    return dioRemote.register(registerPostModel);
  }


}
