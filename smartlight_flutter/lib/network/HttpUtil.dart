import 'package:dio/dio.dart';
import 'package:smartlight_flutter/network/url.dart';

typedef Completor = void Function(String) ;

class HttpManager {
  //返回一个 Future 值
  static Future<Response<Map<String, dynamic>>> _dataRequest(
    String url,
    String method,
    {Map<String, dynamic> params}) async
  {
    Dio dio = Dio();
    return await dio.request(url, data: params, options: Options(method: method));
  }
  
  static void resultHandle(
    String url, 
    String method,
    Completor successCompletor,
    Completor errorCompletor,
    { Map<String, dynamic> params})
  {
    Future<Response<Map<String, dynamic>>> resultFuture = _dataRequest(url, method);
    resultFuture.then((value) {
      String code = value.data['code'];
      if (code == '0') {
        successCompletor('请求成功');
      } else {

      }
    })
    .catchError((error) {
      errorCompletor('adfa');
    });
  }
}