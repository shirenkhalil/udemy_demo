import 'package:flutter/cupertino.dart';
import 'package:udeme_demo/udimy/domain/repositories/domain_repositry.dart';

import '../model/login/login_get.dart';
import '../model/login/login_post.dart';


class Cases {
  DomainRepositry domainRepositry;

  Cases({required this.domainRepositry});

 Future testExample(){
    return domainRepositry.testExample();
  }

  Future<dynamic> login(LoginPostModel loginPostModel){
   return domainRepositry.login(loginPostModel);
  }
  Future<void> setLoginData(LoginGetModel loginGetModel){
   return domainRepositry.setLoginData(loginGetModel);
  }

  dynamic getLoginData(){
   return domainRepositry.getLoginData();
  }
}
