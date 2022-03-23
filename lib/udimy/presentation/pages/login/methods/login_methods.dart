import 'package:flutter/cupertino.dart';
import 'package:udeme_demo/injection.dart';
import 'package:udeme_demo/udimy/domain/model/error/error_model.dart';
import 'package:udeme_demo/udimy/domain/model/login/login_get.dart';
import 'package:udeme_demo/udimy/domain/model/login/login_post.dart';

import '../../../../domain/use_cases/case.dart';

login(LoginPostModel loginPostModel,BuildContext context)async{
  print('start login');
  var response = await sl<Cases>().login(loginPostModel);
  print('end login');
  if(response is LoginGetModel){
    //// success data

  }else{
    // error model
    ErrorModel errorModel = response;

  }
}