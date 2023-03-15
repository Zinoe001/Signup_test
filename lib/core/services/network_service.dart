import 'dart:developer';
import 'package:dio/dio.dart';

class NetWorkServices {
  Dio _dio = Dio();

  NetWorkServices() {
    _dio = Dio(
      BaseOptions(
        baseUrl: "https://api.oyaanow.com",
        receiveTimeout: const Duration(minutes: 5), // 5 minutes
        connectTimeout: const Duration(minutes: 5),
        sendTimeout: const Duration(minutes: 5),
      ),
    );
    initializeInterceptors();
  }

  initializeInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          log(error.message!);
          handler.next(error);
        },
        onRequest: (request, handler) {
          log("${request.method} and ${request.path}");
          handler.next(request);
        },
        onResponse: (response, handler) {
          log("${response.data}");
          handler.next(response);
        },
      ),
    );
  }

// ======================================================
//======================== POST ==========================
//=======================================================
  ///Post request
  Future<dynamic> post(
    /// the api route without the base url
    String uri, {

    ///this are query parameters that would
    /// be attached to the url
    /// [e.g]=>{"a":"yes"}
    /// https://she.com/getPeople?a=yes
    Map<String, dynamic> queryParameters = const {},
    Object? body,
  }) async {
    print("connecting to the internet");
    try {
      Response response = await _dio.post(
        uri,
        queryParameters: queryParameters,
        data: body,
      );
      // checkRequest(response);
      log(response.statusCode.toString());
      log(response.data);
      return response.data;
    } on DioError catch (e) {
      log(e.message!);
      throw Exception(e.message);
    }
  }
}
