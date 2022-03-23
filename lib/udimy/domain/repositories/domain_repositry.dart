import '../model/login/login_get.dart';
import '../model/login/login_post.dart';

abstract class DomainRepositry {
  testExample();
  Future<dynamic> login(LoginPostModel loginPostModel);

  Future<void> setLoginData(LoginGetModel loginGetModel);

  dynamic getLoginData();
}
