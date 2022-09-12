import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Package được thêm vào đây
@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get sharedPref => SharedPreferences.getInstance();

  Dio get dio => Dio(BaseOptions(
        receiveTimeout: 100000,
        connectTimeout: 100000,
        // sendTimeout: 20000,
      ));
}
