
import 'package:dio/dio.dart';
import 'package:udeme_demo/udimy/data/data_sources/database/constant_data.dart';
import 'package:udeme_demo/udimy/domain/model/error/error_model.dart';

class DioHelper {
  late Response _response;
  Dio _dio = new Dio();



  Future<dynamic> get(Map<String, dynamic> post,
      {required Function(Map<String, dynamic> data) onSuccess}) async {
    try {
      _dio.options.connectTimeout = 10000; //5s
      _dio.options.receiveTimeout = 10000;
      print('start');
      _response = await _dio.get(URL,
          queryParameters: post,options: Options(
              headers: {
                'Content-Type':'application/json'
              }
          )); //ResultModel.fromJson(response.data);
      //Map<String, dynamic> data = jsonDecode(response.data);
      //  print("response in dio: $data");
      if (_response.data["success"] == true) {
        print("response in dio: ${_response.data}");
        return onSuccess(_response.data);
      }else{
        return ErrorModel.fromJson(_response.data);
      }
    } catch (error) {
      ErrorModel model = ErrorModel();
      if (error is DioError) {
        print(error);
        if (error.response != null) {
          print(error.response);
          model.msg = error.response?.data??'no error message';
          return error.response;
        }
      }
      print(error.toString());
      model.msg = error.toString();
      return model;
    }
  }

  Future<dynamic> post(Map<String, dynamic> post,
      {required Function(Map<String, dynamic> data) onSuccess}) async {
    try {
      _dio.options.connectTimeout = 10000; //5s
      _dio.options.receiveTimeout = 10000;
      print('start');
      _response = await _dio.post(URL,
          data: post,options: Options(
            headers: {
              'Content-Type':'application/json'
            }
          )); //ResultModel.fromJson(response.data);
      //Map<String, dynamic> data = jsonDecode(response.data);
    //  print("response in dio: $data");
      if (_response.data["success"] == true) {
        print("response in dio: ${_response.data}");
       return onSuccess(_response.data);
      }else{
       return ErrorModel.fromJson(_response.data);
      }
    } catch (error) {
      ErrorModel model = ErrorModel();
      if (error is DioError) {
        print(error);
        if (error.response != null) {
          print(error.response);
          model.msg = error.response?.data??'no error message';
          return error.response;
        }
      }
      print(error.toString());
      model.msg = error.toString();
     return model;
    }
  }
}
