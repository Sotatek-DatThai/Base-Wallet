import 'package:base_wallet/datasource/remote/auth/auth_api.dart';
import 'package:base_wallet/datasource/remote/interceptors/auth_interceptor.dart';
import 'package:base_wallet/datasource/remote/interceptors/queue_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioPod = Provider((ref) => Dio(BaseOptions(
      receiveTimeout: 100000,
      connectTimeout: 100000,
      // sendTimeout: 20000,
    )));

final authInterceptorPod =
    Provider((ref) => AuthInterceptor(ref.watch(dioPod)));

final queueInterceptorPod =
    Provider((ref) => QueueInterceptor(ref.watch(dioPod)));

final authApiPod = Provider((ref) => AuthApi(ref.watch(dioPod),
    ref.watch(authInterceptorPod), ref.watch(queueInterceptorPod), 'baseUrl'));
