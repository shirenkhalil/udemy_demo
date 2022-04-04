import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:udeme_demo/udimy/data/data_sources/api/dio_helper.dart';
import 'package:udeme_demo/udimy/data/data_sources/database/constant_data.dart';
import 'package:udeme_demo/udimy/domain/model/course/courses_dio.dart';
import 'package:udeme_demo/udimy/domain/model/error/error_model.dart';
import 'package:udeme_demo/udimy/domain/model/login/login_get.dart';
import 'package:udeme_demo/udimy/domain/model/login/login_post.dart';
import 'package:udeme_demo/udimy/domain/model/login/register_post.dart';

import '../../../domain/model/test/test.dart';

class DioRemote {
  DioHelper dioHelper;

  DioRemote(this.dioHelper);

  Future<dynamic> login(LoginPostModel loginPostModel) async {
   return  dioHelper.post(loginPostModel.toJson(), onSuccess: (Map<String, dynamic> data) => LoginGetModel.fromJson(data));
  }

  Future<dynamic> register(RegisterPostModel registerPostModel) async {
    return  dioHelper.post(registerPostModel.toJson(), onSuccess: (Map<String, dynamic> data)=>true);
  }
  Future<dynamic> getCourses() async {
    return dioHelper.get({'type':'courses'}, onSuccess: (Map<String, dynamic> data)=>CoursesModelDio.fromJson(data));
  }
}
