import 'package:dio/dio.dart';
import 'package:udeme_demo/udimy/domain/entities/test/test.dart';

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
}
