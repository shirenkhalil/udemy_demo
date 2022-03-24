import 'package:udeme_demo/injection.dart';
import 'package:udeme_demo/toast_utils.dart';
import 'package:udeme_demo/udimy/domain/model/error/error_model.dart';
import 'package:udeme_demo/udimy/domain/model/login/register_post.dart';

import '../../../../domain/use_cases/case.dart';

registerMethods(RegisterPostModel registerPostModel) async {
  var response = await sl<Cases>().register(registerPostModel);
  if (response == true) {
    /// sucess
    showToast('add account success ', MessageErrorType.success);
  } else {
    ErrorModel errorModel = response;

    /// failed
    showToast(errorModel.msg.toString(), MessageErrorType.error);
  }
}
