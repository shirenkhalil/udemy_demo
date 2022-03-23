import 'package:dio/dio.dart';


class DioHelper
{
  static Dio? dio;

  static init(){
    dio =Dio(
      BaseOptions(
        baseUrl: '',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    String ?url,
    String ?lang ='ar',
    String ?token,
    String ? ContentType,
    Map<String ,dynamic>? query,
  })async{
    dio?.options. headers = {
      'lang':lang,
      'taken':token?? null,
      'Content-Type':ContentType,
    };
    return await dio!.get(
      url!,
      queryParameters: query,
    );
  }


  static Future<Response> postData({
    String ?url,
    String ?lang ='ar',
    String ?token,
    String ? ContentType,
    Map<String ,dynamic>? query,
    Map<String ,dynamic>? data,
  })async{
    dio?.options. headers = {
    'lang':lang,
    'taken':token?? null,
    'Content-Type':ContentType,
    };
    return await dio!.post(
      url!,
      queryParameters: query,
      data: data
    );
  }

  static Future<Response> delData({
    String ?url,
    String ?lang ='ar',
    String ?token,
    String ? ContentType,
    Map<String ,dynamic>? query,
    Map<String ,dynamic>? data,
  })async{
    dio?.options. headers = {
      'lang':lang,
      'taken':token?? null,
      'Content-Type':ContentType,
    };
    return await dio!.delete(
        url!,
        queryParameters: query,
        data: data
    );
  }


  static Future<Response> putData({
    String ?url,
    String ?lang ='ar',
    String ?token,
    String ? ContentType,
    Map<String ,dynamic>? query,
    Map<String ,dynamic>? data,
  })async{
    dio?.options. headers = {
      'lang':lang,
      'taken':token?? null,
      'Content-Type':ContentType,
    };
    return await dio!.put(
        url!,
        queryParameters: query,
        data: data
    );
  }

}


// login function
void userLogin({
  String ?email,
  String ?password
}){
  DioHelper.postData(
    url: '',
    data: {
      'email': email,
      'password':password,
    },
  ).then((value){
    print(value.data);
    print(value.data['message']);
  }).catchError((e){print(e);});
}


// main statement
// DioHelper.init();