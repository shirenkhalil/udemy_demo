import 'package:udeme_demo/udimy/domain/model/login/register_post.dart';

import '../model/login/login_get.dart';
import '../model/login/login_post.dart';

abstract class DomainRepositry {
  testExample();
  Future<dynamic> login(LoginPostModel loginPostModel);

  Future<void> setLoginData(LoginGetModel loginGetModel);

  dynamic getLoginData();

  Future<dynamic> register(RegisterPostModel registerPostModel);
}
