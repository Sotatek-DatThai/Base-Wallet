import 'package:injectable/injectable.dart';

@Injectable(env: ['stg'])
class StgInjection {
  @Named('baseUrl')
  String get baseUrl => '';
}
