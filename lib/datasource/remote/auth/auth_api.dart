import 'package:base_wallet/datasource/remote/interceptors/auth_interceptor.dart';
import 'package:base_wallet/datasource/remote/interceptors/queue_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@Injectable()
@RestApi()
abstract class AuthApi {
  @factoryMethod
  factory AuthApi(
    Dio dio,
    AuthInterceptor authInterceptor,
    QueueInterceptor queueInterceptor,
    @Named('baseUrl') String baseUrl,
  ) {
    dio.interceptors.addAll([
      authInterceptor,
      queueInterceptor,
    ]);
    return _AuthApi(dio, baseUrl: baseUrl);
  }
}
