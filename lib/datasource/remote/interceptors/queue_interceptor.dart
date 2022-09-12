import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

bool showPopUpNoConnection = false;

@Injectable()
class QueueInterceptor extends QueuedInterceptor {
  final Dio dio;

  QueueInterceptor(this.dio);
}
