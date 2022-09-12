// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../datasource/local/shared_preferences_datasource.dart' as _i8;
import '../datasource/remote/auth/auth_api.dart' as _i11;
import '../datasource/remote/interceptors/auth_interceptor.dart' as _i10;
import '../datasource/remote/interceptors/queue_interceptor.dart' as _i6;
import '../repository/abstracts/auth_repository.dart' as _i12;
import '../repository/implementations/auth_implementation.dart' as _i13;
import 'dev_injection.dart' as _i3;
import 'prod_injection.dart' as _i5;
import 'register_module.dart' as _i14;
import 'stg_injection.dart' as _i9;

const String _dev = 'dev';
const String _prod = 'prod';
const String _stg = 'stg';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.DevInjection>(() => _i3.DevInjection(), registerFor: {_dev});
  gh.factory<_i4.Dio>(() => registerModule.dio);
  gh.factory<_i5.ProdInjection>(() => _i5.ProdInjection(),
      registerFor: {_prod});
  gh.factory<_i6.QueueInterceptor>(() => _i6.QueueInterceptor(get<_i4.Dio>()));
  await gh.factoryAsync<_i7.SharedPreferences>(() => registerModule.sharedPref,
      preResolve: true);
  gh.singleton<_i8.SharedPreferencesDataSource>(
      _i8.SharedPreferencesDataSource(get<_i7.SharedPreferences>()));
  gh.factory<_i9.StgInjection>(() => _i9.StgInjection(), registerFor: {_stg});
  gh.factory<_i10.AuthInterceptor>(() => _i10.AuthInterceptor(get<_i4.Dio>()));
  gh.factory<_i11.AuthApi>(() => _i11.AuthApi(
      get<_i4.Dio>(),
      get<_i10.AuthInterceptor>(),
      get<_i6.QueueInterceptor>(),
      get<String>(instanceName: 'baseUrl')));
  gh.factory<_i12.IAuthRepository>(
      () => _i13.AuthImplementation(get<_i11.AuthApi>()));
  return get;
}

class _$RegisterModule extends _i14.RegisterModule {}
