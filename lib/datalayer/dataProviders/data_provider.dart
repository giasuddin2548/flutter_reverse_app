import 'package:dio/dio.dart';
import '../../utils/api.dart';
import 'dio_interceptor.dart';
class DataProvider{
  final DioInterceptor dioInterceptor;
  Dio _dio=Dio();
  DataProvider({required this.dioInterceptor}){
    _dio=Dio();
    _dio..options.baseUrl=Api.baseUrl
    ..options.connectTimeout = const Duration(seconds: 50)
    ..options.receiveTimeout = const Duration(seconds: 50)
  //  ..options.receiveDataWhenStatusError=true
    ..options.headers={
      'Content-Type': 'application/json',
    };
    _dio.interceptors.add(dioInterceptor);


  }


  Future<Response> getDataWithParams({required String urlEndPoint, required Map<String, dynamic> data})async{
    try{

      var response = await _dio.get(urlEndPoint, queryParameters: data, options: Options(headers: {}));
      return response;

    }on DioException  catch(ex){
      throw Exception(ex.message);
    }
  }

}