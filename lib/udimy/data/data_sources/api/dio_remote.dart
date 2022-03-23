import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:udeme_demo/udimy/data/data_sources/database/constant_data.dart';
import 'package:udeme_demo/udimy/domain/model/error/error_model.dart';
import 'package:udeme_demo/udimy/domain/model/login/login_get.dart';
import 'package:udeme_demo/udimy/domain/model/login/login_post.dart';

import '../../../domain/model/test/test.dart';


class DioRemote {
  late Response response;
  Dio dio = new Dio();

  Future<dynamic> test() async {
    try {
      dio.options.connectTimeout = 10000; //5s
      dio.options.receiveTimeout = 10000;
      print('start');
      response = await dio.get(
        "https://jsonplaceholder.typicode.com/todos/1",
      ); //ResultModel.fromJson(response.data);
      print("response in dio: ${response.data}");
      return Test.fromJson(response.data);
    } catch (error) {
      if (error is DioError) {
        print(error);
        if (error.response != null) {
          print(error.response);
          return error.response;
        }
      }
      print(error.toString());
      return null;
    }
  }

  Future<dynamic> login(LoginPostModel loginPostModel) async {
    try {
      response = await dio.post(url,data: loginPostModel.toJson());
      //  في الحته دي انا بحول من string ل map عادية
      Map<String, dynamic> data = jsonDecode(response.data);
      print("response in dio: $data");
      if(data["success"] == true){
        return LoginGetModel.fromJson(data);
      }else{
        return ErrorModel.fromJson(data);
      }
    } catch (error) {
      ErrorModel errorModel = ErrorModel(msg: error.toString());
      if (error is DioError) {
        print(error);
        if (error.response != null) {
          print(error.response);
          errorModel.msg = error.response!.data.toString();
          return errorModel;
        }
      }
      print(error.toString());
      return errorModel;
    }
  }



}
