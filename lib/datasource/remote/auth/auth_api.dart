import 'package:base_wallet/datasource/remote/interceptors/auth_interceptor.dart';
import 'package:base_wallet/datasource/remote/interceptors/queue_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(
    Dio dio,
    AuthInterceptor authInterceptor,
    QueueInterceptor queueInterceptor,
     String baseUrl,
  ) {
    dio.interceptors.addAll([
      authInterceptor,
      queueInterceptor,
    ]);
    return _AuthApi(dio, baseUrl: baseUrl);
  }
}
