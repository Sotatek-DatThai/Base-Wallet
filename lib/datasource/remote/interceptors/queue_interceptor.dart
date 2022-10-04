import 'package:dio/dio.dart';

bool showPopUpNoConnection = false;

class QueueInterceptor extends QueuedInterceptor {
  final Dio dio;

  QueueInterceptor(this.dio);
}
