import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;

  AuthInterceptor(this.dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    await _handleRequestOptions(options);
    super.onRequest(options, handler);
  }

  Future<void> _handleRequestOptions(RequestOptions options) async {}

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('### response data ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final error = err.error;
    if (error is SocketException) {
      if (error.osError?.message
              .toLowerCase()
              .contains('no address associated') ??
          false) {}
    }
    super.onError(err, handler);
  }
}
