import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../../core/constants/api_constant.dart';

class DioClient {
  DioClient(this.apiBaseUrl);

  final _logger = GetIt.I<Logger>();
  final String apiBaseUrl;

  Dio get dio => _getDio();

  Dio _getDio() {
    final BaseOptions options = BaseOptions(
      baseUrl: apiBaseUrl,
      connectTimeout: APIConstant.CONNECTION_TIMEOUT,
      receiveTimeout: APIConstant.RECEIVE_TIMEOUT,
    );

    final Dio dio = Dio(options);
    dio.interceptors.add(_loggingInterceptor());

    return dio;
  }

  Interceptor _loggingInterceptor() {
    return InterceptorsWrapper(onRequest: (options, handler) {
      _logger.i(
          "Request ${options.uri} \n"
          "-- headers --\n"
          "${options.headers.toString()} \n");
      return handler.next(options);
    }, onResponse: (response, handler) {
      if (response.statusCode == 200) {
        _logger.i(
          // "Response ${response.requestOptions.uri} \n"
          // "-- headers --\n"
          // "${response.headers.toString()} \n"
          "-- payload --\n"
          "${jsonEncode(response.data)} \n",
        );
      } else {
        _logger.i("Dio Response Status --> ${response.statusCode} \n");
      }
      return handler.next(response);
    }, onError: (DioError err, handler) {
      _logger.i("Dio Response Error --> $err \n");
      return handler.next(err);
    });
  }
}
